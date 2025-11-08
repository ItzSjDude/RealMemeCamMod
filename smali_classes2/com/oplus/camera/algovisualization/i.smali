.class public Lcom/oplus/camera/algovisualization/i;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oplus/camera/algovisualization/i;->a:Landroid/os/Handler;

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/algovisualization/i;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/oplus/camera/algovisualization/i;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/oplus/camera/algovisualization/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
