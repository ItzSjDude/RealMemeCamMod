.class public Lcom/oplus/camera/w/d;
.super Ljava/lang/Object;
.source "CameraThreadExector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/w/d$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static volatile f:Lcom/oplus/camera/w/d;


# instance fields
.field private d:Lcom/oplus/camera/w/d$a;

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/oplus/camera/w/d;->a:I

    .line 17
    sget v0, Lcom/oplus/camera/w/d;->a:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/oplus/camera/w/d;->b:I

    .line 18
    sget v0, Lcom/oplus/camera/w/d;->a:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oplus/camera/w/d;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/oplus/camera/w/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/w/d$a;-><init>(Lcom/oplus/camera/w/d;Lcom/oplus/camera/w/d$1;)V

    iput-object v0, p0, Lcom/oplus/camera/w/d;->d:Lcom/oplus/camera/w/d$a;

    .line 38
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/oplus/camera/w/d;->b:I

    sget v4, Lcom/oplus/camera/w/d;->c:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v9, p0, Lcom/oplus/camera/w/d;->d:Lcom/oplus/camera/w/d$a;

    const-wide/16 v5, 0x5

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/oplus/camera/w/d;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    iget-object p0, p0, Lcom/oplus/camera/w/d;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static a()Lcom/oplus/camera/w/d;
    .locals 2

    .line 26
    sget-object v0, Lcom/oplus/camera/w/d;->f:Lcom/oplus/camera/w/d;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/oplus/camera/w/d;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/oplus/camera/w/d;->f:Lcom/oplus/camera/w/d;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/oplus/camera/w/d;

    invoke-direct {v1}, Lcom/oplus/camera/w/d;-><init>()V

    sput-object v1, Lcom/oplus/camera/w/d;->f:Lcom/oplus/camera/w/d;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/w/d;->f:Lcom/oplus/camera/w/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/camera/w/d;->d:Lcom/oplus/camera/w/d$a;

    invoke-static {v0, p2}, Lcom/oplus/camera/w/d$a;->a(Lcom/oplus/camera/w/d$a;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/oplus/camera/w/d;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oplus/camera/w/d;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public c()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oplus/camera/w/d;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method
