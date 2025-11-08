.class public Lkotlinx/coroutines/f;
.super Lkotlinx/coroutines/ah;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lc/c/b/a/d;
.implements Lkotlinx/coroutines/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/ah<",
        "TT;>;",
        "Lc/c/b/a/d;",
        "Lkotlinx/coroutines/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field private final a:Lc/c/g;

.field private final d:Lc/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/f;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/f;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/f;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method private final a(Ljava/lang/Object;I)Lkotlinx/coroutines/g;
    .locals 2

    .line 514
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/f;->_state:Ljava/lang/Object;

    .line 315
    instance-of v1, v0, Lkotlinx/coroutines/bi;

    if-eqz v1, :cond_1

    .line 316
    sget-object v1, Lkotlinx/coroutines/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/f;->i()V

    .line 318
    invoke-direct {p0, p2}, Lkotlinx/coroutines/f;->a(I)V

    const/4 p0, 0x0

    return-object p0

    .line 321
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/g;

    if-eqz v1, :cond_2

    .line 327
    check-cast v0, Lkotlinx/coroutines/g;

    invoke-virtual {v0}, Lkotlinx/coroutines/g;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 330
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/f;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final a(I)V
    .locals 1

    .line 306
    invoke-direct {p0}, Lkotlinx/coroutines/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/ai;->a(Lkotlinx/coroutines/ah;I)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/ak;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lkotlinx/coroutines/f;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final c(Ljava/lang/Object;)V
    .locals 1

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already resumed, but proposed with update "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final f()Lkotlinx/coroutines/ak;
    .locals 0

    .line 73
    iget-object p0, p0, Lkotlinx/coroutines/f;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/ak;

    return-object p0
.end method

.method private final g()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lkotlinx/coroutines/f;->d:Lc/c/d;

    instance-of v1, v0, Lkotlinx/coroutines/af;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/af;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/af;->a(Lkotlinx/coroutines/f;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final h()Z
    .locals 4

    .line 485
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/f;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 222
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 220
    :cond_2
    sget-object v0, Lkotlinx/coroutines/f;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final i()V
    .locals 1

    .line 341
    invoke-direct {p0}, Lkotlinx/coroutines/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/f;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p0, p0, Lkotlinx/coroutines/f;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 411
    instance-of p0, p1, Lkotlinx/coroutines/n;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/n;

    iget-object p1, p1, Lkotlinx/coroutines/n;->a:Ljava/lang/Object;

    goto :goto_0

    .line 412
    :cond_0
    instance-of p0, p1, Lkotlinx/coroutines/o;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlinx/coroutines/o;

    iget-object p1, p1, Lkotlinx/coroutines/o;->a:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 151
    instance-of v0, p1, Lkotlinx/coroutines/o;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    check-cast p1, Lkotlinx/coroutines/o;

    iget-object p1, p1, Lkotlinx/coroutines/o;->b:Lc/f/a/b;

    invoke-interface {p1, p2}, Lc/f/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 465
    invoke-virtual {p0}, Lkotlinx/coroutines/f;->getContext()Lc/c/g;

    move-result-object p2

    .line 466
    new-instance v0, Lkotlinx/coroutines/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 464
    invoke-static {p2, v0}, Lkotlinx/coroutines/v;->a(Lc/c/g;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lkotlinx/coroutines/f;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 1

    .line 349
    invoke-direct {p0}, Lkotlinx/coroutines/f;->f()Lkotlinx/coroutines/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0}, Lkotlinx/coroutines/ak;->a()V

    .line 351
    :cond_0
    sget-object v0, Lkotlinx/coroutines/bh;->a:Lkotlinx/coroutines/bh;

    check-cast v0, Lkotlinx/coroutines/ak;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/f;->a(Lkotlinx/coroutines/ak;)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final e()Lc/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lkotlinx/coroutines/f;->d:Lc/c/d;

    return-object p0
.end method

.method public getCallerFrame()Lc/c/b/a/d;
    .locals 1

    .line 144
    iget-object p0, p0, Lkotlinx/coroutines/f;->d:Lc/c/d;

    instance-of v0, p0, Lc/c/b/a/d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lc/c/b/a/d;

    return-object p0
.end method

.method public getContext()Lc/c/g;
    .locals 0

    .line 30
    iget-object p0, p0, Lkotlinx/coroutines/f;->a:Lc/c/g;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 250
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/e;

    invoke-static {p1, v0}, Lkotlinx/coroutines/m;->a(Ljava/lang/Object;Lkotlinx/coroutines/e;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lkotlinx/coroutines/f;->e:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/f;->a(Ljava/lang/Object;I)Lkotlinx/coroutines/g;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/f;->d:Lc/c/d;

    invoke-static {v1}, Lkotlinx/coroutines/ad;->a(Lc/c/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/f;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
