.class public final Lkotlinx/coroutines/b/a;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/b/a$b;,
        Lkotlinx/coroutines/b/a$c;,
        Lkotlinx/coroutines/b/a$a;
    }
.end annotation


# static fields
.field static final d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final i:Lkotlinx/coroutines/internal/r;

.field public static final j:Lkotlinx/coroutines/b/a$a;

.field private static final k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _isTerminated:I

.field public final a:Lkotlinx/coroutines/b/e;

.field public final b:Lkotlinx/coroutines/b/e;

.field public final c:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field volatile controlState:J

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:Ljava/lang/String;

.field private volatile parkedWorkersStack:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/b/a$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/b/a$a;

    .line 304
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/b/a;->i:Lkotlinx/coroutines/internal/r;

    const-class v0, Lkotlinx/coroutines/b/a;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/b/a;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/b/a;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/b/a;->e:I

    iput p2, p0, Lkotlinx/coroutines/b/a;->f:I

    iput-wide p3, p0, Lkotlinx/coroutines/b/a;->g:J

    iput-object p5, p0, Lkotlinx/coroutines/b/a;->h:Ljava/lang/String;

    .line 99
    iget p1, p0, Lkotlinx/coroutines/b/a;->e:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_7

    .line 102
    iget p1, p0, Lkotlinx/coroutines/b/a;->f:I

    iget p4, p0, Lkotlinx/coroutines/b/a;->e:I

    if-lt p1, p4, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    const-string p4, "Max pool size "

    if-eqz p1, :cond_6

    .line 105
    iget p1, p0, Lkotlinx/coroutines/b/a;->f:I

    const p5, 0x1ffffe

    if-gt p1, p5, :cond_2

    move p1, p3

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    .line 108
    iget-wide p4, p0, Lkotlinx/coroutines/b/a;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_3

    move p1, p3

    goto :goto_3

    :cond_3
    move p1, p2

    :goto_3
    if-eqz p1, :cond_4

    .line 114
    new-instance p1, Lkotlinx/coroutines/b/e;

    invoke-direct {p1}, Lkotlinx/coroutines/b/e;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    .line 116
    new-instance p1, Lkotlinx/coroutines/b/e;

    invoke-direct {p1}, Lkotlinx/coroutines/b/e;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    .line 140
    iput-wide v0, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    .line 264
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p4, p0, Lkotlinx/coroutines/b/a;->f:I

    add-int/2addr p4, p3

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 270
    iget p1, p0, Lkotlinx/coroutines/b/a;->e:I

    int-to-long p3, p1

    const/16 p1, 0x2a

    shl-long/2addr p3, p1

    iput-wide p3, p0, Lkotlinx/coroutines/b/a;->controlState:J

    .line 298
    iput p2, p0, Lkotlinx/coroutines/b/a;->_isTerminated:I

    return-void

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lkotlinx/coroutines/b/a;->g:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " must be positive"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 106
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/b/a;->f:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 103
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlinx/coroutines/b/a;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/b/a;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 100
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/coroutines/b/a;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " should be at least 1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic a(Lkotlinx/coroutines/b/a;)I
    .locals 0

    .line 92
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->d()I

    move-result p0

    return p0
.end method

.method private final a(Lkotlinx/coroutines/b/a$b;Lkotlinx/coroutines/b/i;Z)Lkotlinx/coroutines/b/i;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    .line 500
    :cond_0
    iget-object p0, p1, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v0, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    if-ne p0, v0, :cond_1

    return-object p2

    .line 1003
    :cond_1
    iget-object p0, p2, Lkotlinx/coroutines/b/i;->g:Lkotlinx/coroutines/b/j;

    invoke-interface {p0}, Lkotlinx/coroutines/b/j;->b()I

    move-result p0

    if-nez p0, :cond_2

    .line 502
    iget-object p0, p1, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v0, Lkotlinx/coroutines/b/a$c;->BLOCKING:Lkotlinx/coroutines/b/a$c;

    if-ne p0, v0, :cond_2

    return-object p2

    :cond_2
    const/4 p0, 0x1

    .line 505
    iput-boolean p0, p1, Lkotlinx/coroutines/b/a$b;->d:Z

    .line 506
    iget-object p0, p1, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {p0, p2, p3}, Lkotlinx/coroutines/b/n;->a(Lkotlinx/coroutines/b/i;Z)Lkotlinx/coroutines/b/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lkotlinx/coroutines/b/a;Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 383
    sget-object p2, Lkotlinx/coroutines/b/h;->a:Lkotlinx/coroutines/b/h;

    check-cast p2, Lkotlinx/coroutines/b/j;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/b/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 3

    .line 994
    sget-object v0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, 0x200000

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    if-eqz p1, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 421
    :cond_1
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/b/a;->b(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 422
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->e()Z

    return-void
.end method

.method static synthetic a(Lkotlinx/coroutines/b/a;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 431
    iget-wide p1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/b/a;->b(J)Z

    move-result p0

    return p0
.end method

.method private final b(Lkotlinx/coroutines/b/a$b;)I
    .locals 0

    .line 237
    invoke-virtual {p1}, Lkotlinx/coroutines/b/a$b;->b()Ljava/lang/Object;

    move-result-object p0

    .line 240
    :goto_0
    sget-object p1, Lkotlinx/coroutines/b/a;->i:Lkotlinx/coroutines/internal/r;

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_1
    check-cast p0, Lkotlinx/coroutines/b/a$b;

    .line 244
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a$b;->a()I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    .line 247
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a$b;->b()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private final b(J)Z
    .locals 3

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 434
    invoke-static {v0, p1}, Lc/h/d;->b(II)I

    move-result p2

    .line 439
    iget v0, p0, Lkotlinx/coroutines/b/a;->e:I

    if-ge p2, v0, :cond_1

    .line 440
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->f()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 443
    iget v1, p0, Lkotlinx/coroutines/b/a;->e:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->f()I

    :cond_0
    if-lez p2, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private final b(Lkotlinx/coroutines/b/i;)Z
    .locals 2

    .line 972
    iget-object v0, p1, Lkotlinx/coroutines/b/i;->g:Lkotlinx/coroutines/b/j;

    invoke-interface {v0}, Lkotlinx/coroutines/b/j;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 120
    iget-object p0, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/e;->a(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    .line 122
    :cond_1
    iget-object p0, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/e;->a(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method private final c()Lkotlinx/coroutines/b/a$b;
    .locals 9

    .line 979
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 207
    iget-object v1, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/b/a$b;

    if-eqz v6, :cond_2

    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    .line 209
    invoke-direct {p0, v6}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/a$b;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    sget-object v5, Lkotlinx/coroutines/b/a;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object p0, Lkotlinx/coroutines/b/a;->i:Lkotlinx/coroutines/internal/r;

    invoke-virtual {v6, p0}, Lkotlinx/coroutines/b/a$b;->a(Ljava/lang/Object;)V

    return-object v6

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final d()I
    .locals 4

    .line 271
    iget-wide v0, p0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final e()Z
    .locals 4

    .line 451
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->c()Lkotlinx/coroutines/b/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 452
    sget-object v2, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private final f()I
    .locals 10

    .line 464
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 997
    monitor-enter v0

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    .line 467
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v5, v5

    const-wide v6, 0x3ffffe00000L

    and-long/2addr v1, v6

    const/16 v6, 0x15

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int v1, v5, v1

    const/4 v2, 0x0

    .line 470
    invoke-static {v1, v2}, Lc/h/d;->b(II)I

    move-result v1

    .line 472
    iget v6, p0, Lkotlinx/coroutines/b/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v6, :cond_1

    monitor-exit v0

    return v2

    .line 473
    :cond_1
    :try_start_2
    iget v6, p0, Lkotlinx/coroutines/b/a;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v5, v6, :cond_2

    monitor-exit v0

    return v2

    .line 1000
    :cond_2
    :try_start_3
    iget-wide v5, p0, Lkotlinx/coroutines/b/a;->controlState:J

    and-long/2addr v5, v3

    long-to-int v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-lez v5, :cond_3

    .line 476
    iget-object v7, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    if-eqz v7, :cond_6

    .line 482
    new-instance v7, Lkotlinx/coroutines/b/a$b;

    invoke-direct {v7, p0, v5}, Lkotlinx/coroutines/b/a$b;-><init>(Lkotlinx/coroutines/b/a;I)V

    .line 483
    iget-object v8, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1001
    sget-object v8, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int p0, v3

    if-ne v5, p0, :cond_4

    move v2, v6

    :cond_4
    if-eqz v2, :cond_5

    .line 485
    invoke-virtual {v7}, Lkotlinx/coroutines/b/a$b;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v1, v6

    .line 486
    monitor-exit v0

    return v1

    :cond_5
    :try_start_4
    const-string p0, "Failed requirement."

    .line 484
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_6
    const-string p0, "Failed requirement."

    .line 476
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    .line 486
    monitor-exit v0

    throw p0
.end method

.method private final g()Lkotlinx/coroutines/b/a$b;
    .locals 3

    .line 509
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/b/a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/b/a$b;

    if-eqz v0, :cond_1

    .line 1004
    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    check-cast p0, Lkotlinx/coroutines/b/a;

    invoke-static {v1, p0}, Lc/f/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v2, v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;)Lkotlinx/coroutines/b/i;
    .locals 2

    .line 407
    sget-object p0, Lkotlinx/coroutines/b/l;->f:Lkotlinx/coroutines/b/m;

    invoke-virtual {p0}, Lkotlinx/coroutines/b/m;->a()J

    move-result-wide v0

    .line 408
    instance-of p0, p1, Lkotlinx/coroutines/b/i;

    if-eqz p0, :cond_0

    .line 409
    check-cast p1, Lkotlinx/coroutines/b/i;

    iput-wide v0, p1, Lkotlinx/coroutines/b/i;->f:J

    .line 410
    iput-object p2, p1, Lkotlinx/coroutines/b/i;->g:Lkotlinx/coroutines/b/j;

    return-object p1

    .line 413
    :cond_0
    new-instance p0, Lkotlinx/coroutines/b/k;

    invoke-direct {p0, p1, v0, v1, p2}, Lkotlinx/coroutines/b/k;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/b/j;)V

    check-cast p0, Lkotlinx/coroutines/b/i;

    return-object p0
.end method

.method public final a(J)V
    .locals 8

    .line 334
    sget-object v0, Lkotlinx/coroutines/b/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->g()Lkotlinx/coroutines/b/a$b;

    move-result-object v0

    .line 338
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 986
    monitor-enter v3

    .line 987
    :try_start_0
    iget-wide v4, p0, Lkotlinx/coroutines/b/a;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    monitor-exit v3

    if-gt v2, v4, :cond_6

    move v3, v2

    .line 341
    :goto_0
    iget-object v5, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    check-cast v5, Lkotlinx/coroutines/b/a$b;

    if-eq v5, v0, :cond_5

    .line 343
    :goto_1
    invoke-virtual {v5}, Lkotlinx/coroutines/b/a$b;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    move-object v6, v5

    check-cast v6, Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 345
    invoke-virtual {v5, p1, p2}, Lkotlinx/coroutines/b/a$b;->join(J)V

    goto :goto_1

    .line 347
    :cond_1
    iget-object v6, v5, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    .line 348
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    if-ne v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 349
    :cond_4
    :goto_3
    iget-object v5, v5, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    iget-object v6, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/b/n;->a(Lkotlinx/coroutines/b/e;)V

    :cond_5
    if-eq v3, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_6
    iget-object p1, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->b()V

    .line 354
    iget-object p1, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->b()V

    :goto_4
    if-eqz v0, :cond_7

    .line 357
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/b/a$b;->a(Z)Lkotlinx/coroutines/b/i;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_5

    .line 358
    :cond_7
    iget-object p1, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/b/i;

    :goto_5
    if-eqz p1, :cond_8

    goto :goto_6

    .line 359
    :cond_8
    iget-object p1, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/b/i;

    :goto_6
    if-eqz p1, :cond_9

    .line 361
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/i;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 364
    sget-object p1, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    .line 366
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 988
    iget-wide p1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr p1, v3

    const/16 v0, 0x2a

    shr-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lkotlinx/coroutines/b/a;->e:I

    if-ne p1, p2, :cond_b

    move v1, v2

    :cond_b
    if-eqz v1, :cond_c

    goto :goto_7

    .line 366
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_d
    :goto_7
    const-wide/16 p1, 0x0

    .line 367
    iput-wide p1, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    .line 368
    iput-wide p1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    return-void

    :catchall_0
    move-exception p0

    .line 987
    monitor-exit v3

    throw p0
.end method

.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;Z)V
    .locals 1

    .line 384
    invoke-static {}, Lkotlinx/coroutines/bo;->a()Lkotlinx/coroutines/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/bn;->b()V

    .line 385
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/b/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;)Lkotlinx/coroutines/b/i;

    move-result-object p1

    .line 387
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->g()Lkotlinx/coroutines/b/a$b;

    move-result-object p2

    .line 388
    invoke-direct {p0, p2, p1, p3}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;Lkotlinx/coroutines/b/i;Z)Lkotlinx/coroutines/b/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lkotlinx/coroutines/b/a;->h:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was terminated"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 993
    :goto_1
    iget-object p1, p1, Lkotlinx/coroutines/b/i;->g:Lkotlinx/coroutines/b/j;

    invoke-interface {p1}, Lkotlinx/coroutines/b/j;->b()I

    move-result p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    return-void

    .line 399
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a;->b()V

    goto :goto_2

    .line 402
    :cond_5
    invoke-direct {p0, p2}, Lkotlinx/coroutines/b/a;->a(Z)V

    :goto_2
    return-void
.end method

.method public final a(Lkotlinx/coroutines/b/a$b;II)V
    .locals 8

    .line 974
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v0, p2, :cond_2

    if-nez p3, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/a$b;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p3

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    goto :goto_0

    .line 163
    :cond_3
    sget-object v1, Lkotlinx/coroutines/b/a;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final a(Lkotlinx/coroutines/b/i;)V
    .locals 1

    .line 571
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/b/i;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-static {}, Lkotlinx/coroutines/bo;->a()Lkotlinx/coroutines/bn;

    move-result-object p0

    if-eqz p0, :cond_0

    :goto_0
    invoke-interface {p0}, Lkotlinx/coroutines/bn;->c()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 573
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    invoke-static {}, Lkotlinx/coroutines/bo;->a()Lkotlinx/coroutines/bn;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    invoke-static {}, Lkotlinx/coroutines/bo;->a()Lkotlinx/coroutines/bn;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/bn;->c()V

    :cond_1
    throw p0
.end method

.method public final a()Z
    .locals 0

    .line 299
    iget p0, p0, Lkotlinx/coroutines/b/a;->_isTerminated:I

    return p0
.end method

.method public final a(Lkotlinx/coroutines/b/a$b;)Z
    .locals 10

    .line 178
    invoke-virtual {p1}, Lkotlinx/coroutines/b/a$b;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/b/a;->i:Lkotlinx/coroutines/internal/r;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 976
    :cond_0
    iget-wide v5, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v5

    long-to-int v0, v0

    const-wide/32 v3, 0x200000

    add-long/2addr v3, v5

    const-wide/32 v7, -0x200000

    and-long/2addr v3, v7

    .line 186
    invoke-virtual {p1}, Lkotlinx/coroutines/b/a$b;->a()I

    move-result v1

    .line 187
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    if-eqz v1, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 188
    :cond_3
    :goto_1
    iget-object v7, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/b/a$b;->a(Ljava/lang/Object;)V

    .line 194
    sget-object v0, Lkotlinx/coroutines/b/a;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v1

    or-long/2addr v7, v3

    move-object v3, v0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v9
.end method

.method public final b()V
    .locals 4

    .line 426
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->e()Z

    return-void
.end method

.method public close()V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 329
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/b/a;->a(J)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 327
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;ZILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v1, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_6

    .line 529
    iget-object v9, p0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/b/a$b;

    if-eqz v9, :cond_5

    .line 530
    iget-object v10, v9, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v10}, Lkotlinx/coroutines/b/n;->b()I

    move-result v10

    .line 531
    iget-object v9, v9, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v11, Lkotlinx/coroutines/b/b;->a:[I

    invoke-virtual {v9}, Lkotlinx/coroutines/b/a$c;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v3, :cond_4

    const/4 v11, 0x2

    if-eq v9, v11, :cond_3

    const/4 v11, 0x3

    if-eq v9, v11, :cond_2

    const/4 v11, 0x4

    if-eq v9, v11, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    if-lez v10, :cond_5

    .line 543
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "d"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 539
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "c"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 535
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "b"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 548
    :cond_6
    iget-wide v1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lkotlinx/coroutines/b/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x5b

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "Pool Size {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "core = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget v9, p0, Lkotlinx/coroutines/b/a;->e:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "max = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget v10, p0, Lkotlinx/coroutines/b/a;->f:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "}, "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Worker States {"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "CPU = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "blocking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "parked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dormant = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "terminated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "running workers queues = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "global CPU queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "global blocking queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Control State {"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "created workers= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x1fffff

    and-long/2addr v4, v1

    long-to-int v0, v4

    .line 1005
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "blocking tasks = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x3ffffe00000L

    and-long/2addr v4, v1

    const/16 v0, 0x15

    shr-long/2addr v4, v0

    long-to-int v0, v4

    .line 1006
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CPUs acquired = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget p0, p0, Lkotlinx/coroutines/b/a;->e:I

    const-wide v4, 0x7ffffc0000000000L

    and-long v0, v1, v4

    const/16 v2, 0x2a

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
