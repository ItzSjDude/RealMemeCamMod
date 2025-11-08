.class public final Lkotlinx/coroutines/ap;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public static final a()Lkotlinx/coroutines/am;
    .locals 2

    .line 26
    new-instance v0, Lkotlinx/coroutines/b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/b;-><init>(Ljava/lang/Thread;)V

    check-cast v0, Lkotlinx/coroutines/am;

    return-object v0
.end method
