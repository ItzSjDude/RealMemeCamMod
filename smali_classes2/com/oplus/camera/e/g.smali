.class public abstract Lcom/oplus/camera/e/g;
.super Ljava/lang/Object;
.source "OneCameraStateMachine.java"

# interfaces
.implements Lcom/oplus/camera/e/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/e/g$b;,
        Lcom/oplus/camera/e/g$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Landroid/os/ConditionVariable;

.field private E:Landroid/os/ConditionVariable;

.field private F:Ljava/util/concurrent/locks/Lock;

.field protected final n:Ljava/lang/Object;

.field protected o:Landroid/os/ConditionVariable;

.field protected p:Lcom/oplus/camera/e/g$a;

.field protected q:Lcom/oplus/camera/w/b;

.field protected r:Landroid/os/Handler;

.field protected s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:Landroid/os/ConditionVariable;

.field private z:J


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->n:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->o:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/e/g;->q:Lcom/oplus/camera/w/b;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/e/g;->r:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/e/g;->s:Ljava/util/HashMap;

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/e/g;->t:Ljava/util/HashMap;

    const/4 v1, 0x3

    .line 59
    iput v1, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/oplus/camera/e/g;->v:I

    .line 61
    iput v1, p0, Lcom/oplus/camera/e/g;->w:I

    const/4 v2, 0x0

    .line 62
    iput v2, p0, Lcom/oplus/camera/e/g;->x:I

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/e/g;->y:Landroid/os/ConditionVariable;

    const-wide/16 v3, 0x0

    .line 71
    iput-wide v3, p0, Lcom/oplus/camera/e/g;->z:J

    const-wide/16 v3, 0x7d0

    .line 72
    iput-wide v3, p0, Lcom/oplus/camera/e/g;->A:J

    .line 73
    iput-boolean v1, p0, Lcom/oplus/camera/e/g;->B:Z

    .line 74
    iput-boolean v2, p0, Lcom/oplus/camera/e/g;->C:Z

    .line 76
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->D:Landroid/os/ConditionVariable;

    .line 77
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->E:Landroid/os/ConditionVariable;

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    .line 83
    new-instance v0, Lcom/oplus/camera/w/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Hal Control Thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oplus/camera/w/c;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lcom/oplus/camera/w/c;->a()V

    .line 86
    invoke-virtual {v0}, Lcom/oplus/camera/w/c;->start()V

    .line 87
    new-instance v2, Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/w/c;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oplus/camera/e/g$a;-><init>(Lcom/oplus/camera/e/g;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    .line 88
    invoke-virtual {v0}, Lcom/oplus/camera/w/c;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/util/LogPrinter;

    const/4 v3, 0x2

    const-string v4, "hal-control-handler"

    invoke-direct {v2, v3, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera Hal Callback Thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v2, Lcom/oplus/camera/w/b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oplus/camera/w/b;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oplus/camera/e/g;->q:Lcom/oplus/camera/w/b;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aps Capture Yuv Thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oplus/camera/e/g;->r:Landroid/os/Handler;

    .line 95
    iput p1, p0, Lcom/oplus/camera/e/g;->w:I

    if-ne v1, p1, :cond_0

    .line 98
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/camera/e/g;->y:Landroid/os/ConditionVariable;

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/e/g;->n:Ljava/lang/Object;

    monitor-enter p1

    .line 102
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->s:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/e/g;->t:Ljava/util/HashMap;

    .line 104
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private D()V
    .locals 6

    .line 531
    iget-wide v0, p0, Lcom/oplus/camera/e/g;->A:J

    const-wide/16 v2, 0x7d0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blockCloseOldSession begin, mCameraRole: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", leftWaitingTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OneCameraStateMachine"

    invoke-static {v5, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v4, p0, Lcom/oplus/camera/e/g;->E:Landroid/os/ConditionVariable;

    invoke-virtual {v4, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    .line 538
    iput-wide v2, p0, Lcom/oplus/camera/e/g;->A:J

    .line 539
    iget-object v0, p0, Lcom/oplus/camera/e/g;->E:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockCloseOldSession end, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCameraDecision, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/e/g;->u:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraStateMachine"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v0, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  quick close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 227
    iput v3, v0, Landroid/os/Message;->what:I

    .line 228
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 230
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/g$a;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/e/g;Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/e/g;->a(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/e/g;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oplus/camera/e/g;->B:Z

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/e/g;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/oplus/camera/e/g;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/e/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/camera/e/g;->D()V

    return-void
.end method


# virtual methods
.method protected B(I)V
    .locals 8

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceState, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraStateMachine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/e/g;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/e/g;->o:Landroid/os/ConditionVariable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDeviceState, wait close: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    iput p1, p0, Lcom/oplus/camera/e/g;->u:I

    .line 344
    iget p1, p0, Lcom/oplus/camera/e/g;->u:I

    if-ne p1, v2, :cond_1

    .line 345
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/g$a;->a(Z)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/e/g$a;->a(Z)V

    :goto_0
    return-void
.end method

.method protected abstract E()V
.end method

.method protected abstract F()V
.end method

.method protected G()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/oplus/camera/e/g;->y:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openMainCameraOpenBlock, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraStateMachine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/oplus/camera/e/g;->y:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/g;->E:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 475
    iget-object v0, p0, Lcom/oplus/camera/e/g;->D:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object p0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 478
    throw v0
.end method

.method public I()Z
    .locals 1

    .line 546
    iget p0, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public J()Z
    .locals 2

    .line 559
    iget p0, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v0, 0x1

    if-eq v0, p0, :cond_1

    const/4 v1, 0x4

    if-eq v1, p0, :cond_1

    const/4 v1, 0x5

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public a(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/oplus/camera/e/g;->v:I

    return-void
.end method

.method protected abstract a(ILcom/oplus/camera/e/d$b;)V
.end method

.method public a(ILcom/oplus/camera/e/d$b;I)V
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera, send open message, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraStateMachine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    .line 238
    iput v2, v0, Landroid/os/Message;->what:I

    .line 239
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 241
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 242
    iget-object p1, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/e/g$a;->sendMessage(Landroid/os/Message;)Z

    .line 244
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const-string p1, "dump-after-enqueue-open-camera"

    invoke-static {v1, p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Landroid/hardware/camera2/CameraDevice;Z)V
.end method

.method protected abstract a(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;Lcom/oplus/camera/e/d$d;I)V
.end method

.method public a(Z)V
    .locals 1

    .line 414
    new-instance v0, Lcom/oplus/camera/e/g$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/e/g$1;-><init>(Lcom/oplus/camera/e/g;Z)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZLandroid/hardware/camera2/CameraDevice;Z)V
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCamera, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  mCameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needDelay: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraStateMachine"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p1}, Lcom/oplus/camera/e/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x4

    .line 296
    iput v1, p1, Landroid/os/Message;->what:I

    .line 297
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    iput p3, p1, Landroid/os/Message;->arg1:I

    const/4 p2, 0x1

    .line 299
    iput-boolean p2, p0, Lcom/oplus/camera/e/g;->B:Z

    .line 300
    iget-object p2, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/e/g$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 302
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const-string p1, "closeCamera"

    invoke-static {v0, p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 550
    iget p0, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)V
    .locals 2

    .line 353
    iget-object p1, p0, Lcom/oplus/camera/e/g;->n:Ljava/lang/Object;

    monitor-enter p1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/g;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/e/g;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 359
    iget-object p0, p0, Lcom/oplus/camera/e/g;->t:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 360
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(ILcom/oplus/camera/e/d$b;)V
    .locals 7

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraStateMachine"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const-string v3, "dump-before-open"

    invoke-static {v2, v0, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/oplus/camera/e/g$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    iget-boolean v0, p0, Lcom/oplus/camera/e/g;->C:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 264
    iput-boolean v4, p0, Lcom/oplus/camera/e/g;->B:Z

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x7d0

    .line 266
    iput-wide v5, p0, Lcom/oplus/camera/e/g;->A:J

    .line 269
    :goto_0
    invoke-virtual {p0, v4}, Lcom/oplus/camera/e/g;->b(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/oplus/camera/e/g;->c()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", normal open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", close then open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v3, v4}, Lcom/oplus/camera/e/g;->a(Landroid/hardware/camera2/CameraDevice;Z)V

    .line 280
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/e/g;->a(ILcom/oplus/camera/e/d$b;)V

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/oplus/camera/e/g;->B:Z

    .line 283
    iget-object p1, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p1}, Lcom/oplus/camera/e/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x7

    .line 284
    iput v0, p1, Landroid/os/Message;->what:I

    .line 285
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    iget-object p2, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p2, p1}, Lcom/oplus/camera/e/g$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 288
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const-string p1, "openCamera"

    invoke-static {v2, p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;Lcom/oplus/camera/e/d$d;I)V
    .locals 3

    const-string v0, "OneCameraStateMachine"

    const-string v1, "createCaptureSession"

    .line 307
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 310
    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    new-instance v1, Lcom/oplus/camera/e/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/e/g$b;-><init>(Lcom/oplus/camera/e/g;Lcom/oplus/camera/e/g$1;)V

    .line 312
    iput-object p1, v1, Lcom/oplus/camera/e/g$b;->a:Lcom/oplus/ocs/camera/CameraDeviceConfig$Builder;

    .line 313
    iput-object p2, v1, Lcom/oplus/camera/e/g$b;->b:Lcom/oplus/camera/e/d$d;

    .line 314
    iput p3, v1, Lcom/oplus/camera/e/g$b;->c:I

    .line 315
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/g$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openLock, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openboth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraStateMachine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/e/g;->D:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/oplus/camera/e/g;->E:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/camera/e/g;->F:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 499
    throw p1
.end method

.method public b()Z
    .locals 1

    .line 554
    iget p0, p0, Lcom/oplus/camera/e/g;->u:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)V
    .locals 5

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discardFreeBuffers, format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraStateMachine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/e/g;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    if-ne v2, p1, :cond_0

    :try_start_0
    const-string p1, "type_still_capture_yuv_main"

    const-string v1, "type_still_capture_yuv_mfnr"

    const-string v2, "type_still_capture_yuv_sub"

    const-string v3, "type_still_capture_yuv_third"

    const-string v4, "type_tuning_data_yuv"

    .line 371
    filled-new-array {p1, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/16 v2, 0x20

    if-ne v2, p1, :cond_1

    const-string p1, "type_still_capture_raw"

    const-string v1, "type_tuning_data_raw"

    .line 379
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 386
    array-length p1, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_3

    aget-object v3, v1, v2

    .line 387
    iget-object v4, p0, Lcom/oplus/camera/e/g;->s:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    iget-object v4, p0, Lcom/oplus/camera/e/g;->s:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->discardFreeBuffers()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/e/g;->q:Lcom/oplus/camera/w/b;

    invoke-virtual {v0}, Lcom/oplus/camera/w/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 399
    iget-object p0, p0, Lcom/oplus/camera/e/g;->r:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSession, mCameraRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/e/g;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraStateMachine"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v0}, Lcom/oplus/camera/e/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 324
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 325
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 326
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 327
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/e/g$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public l()Landroid/os/Handler;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    return-object p0
.end method

.method public m()V
    .locals 3

    const-string v0, "OneCameraStateMachine"

    const-string v1, "removeStaleCameraMessage"

    .line 447
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 450
    invoke-virtual {v1, v2}, Lcom/oplus/camera/e/g$a;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "openCamera, open after close, don\'t need close, just remove close msg."

    .line 451
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {v1, v2}, Lcom/oplus/camera/e/g$a;->removeMessages(I)V

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/e/g$a;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "openCamera, open again, remove the old open message."

    .line 457
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object p0, p0, Lcom/oplus/camera/e/g;->p:Lcom/oplus/camera/e/g$a;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/e/g$a;->removeMessages(I)V

    :cond_1
    return-void
.end method
