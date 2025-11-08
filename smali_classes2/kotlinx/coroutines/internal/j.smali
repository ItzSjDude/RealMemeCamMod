.class public Lkotlinx/coroutines/internal/j;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _cur:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/j;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lkotlinx/coroutines/internal/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/k;-><init>(IZ)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/j;->_cur:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 37
    iget-object p0, p0, Lkotlinx/coroutines/internal/j;->_cur:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/internal/k;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/k;->b()I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 312
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_cur:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/k;

    .line 48
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/k;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 51
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->e()Lkotlinx/coroutines/internal/k;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final b()V
    .locals 3

    .line 310
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_cur:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/k;

    .line 41
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->e()Lkotlinx/coroutines/internal/k;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 314
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->_cur:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/k;

    .line 59
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->d()Ljava/lang/Object;

    move-result-object v1

    .line 60
    sget-object v2, Lkotlinx/coroutines/internal/k;->a:Lkotlinx/coroutines/internal/r;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 61
    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/k;->e()Lkotlinx/coroutines/internal/k;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
