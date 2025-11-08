.class public Lcom/oplus/tblplayer/utils/executor/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newExecutor(IIJILjava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 7

    .line 15
    new-instance v4, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v4, p4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v5, Lcom/oplus/tblplayer/utils/executor/DefaultThreadFactory;

    invoke-direct {v5, p5}, Lcom/oplus/tblplayer/utils/executor/DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/oplus/tblplayer/utils/executor/DefaultDiscardPolicy;

    invoke-direct {v6}, Lcom/oplus/tblplayer/utils/executor/DefaultDiscardPolicy;-><init>()V

    move v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/oplus/tblplayer/utils/executor/Executors;->newExecutor(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static newExecutor(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/Executor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 24
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method
