.class public final Lkotlinx/coroutines/b/a$b;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lkotlinx/coroutines/b/n;

.field public b:Lkotlinx/coroutines/b/a$c;

.field public d:Z

.field final synthetic e:Lkotlinx/coroutines/b/a;

.field private f:J

.field private g:J

.field private h:I

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/b/a$b;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/a$b;->setDaemon(Z)V

    .line 600
    new-instance p1, Lkotlinx/coroutines/b/n;

    invoke-direct {p1}, Lkotlinx/coroutines/b/n;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    .line 608
    sget-object p1, Lkotlinx/coroutines/b/a$c;->DORMANT:Lkotlinx/coroutines/b/a$c;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    const/4 p1, 0x0

    .line 617
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->workerCtl:I

    .line 631
    sget-object p1, Lkotlinx/coroutines/b/a;->i:Lkotlinx/coroutines/internal/r;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 638
    sget-object p1, Lc/g/c;->a:Lc/g/c$a;

    invoke-virtual {p1}, Lc/g/c$a;->b()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/b/a$b;->h:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/b/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;-><init>(Lkotlinx/coroutines/b/a;)V

    .line 594
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/b/a$b;->a(I)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/b/i;)V
    .locals 2

    .line 983
    iget-object v0, p1, Lkotlinx/coroutines/b/i;->g:Lkotlinx/coroutines/b/j;

    invoke-interface {v0}, Lkotlinx/coroutines/b/j;->b()I

    move-result v0

    .line 736
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a$b;->e(I)V

    .line 737
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a$b;->c(I)V

    .line 738
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/i;)V

    .line 739
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a$b;->d(I)V

    return-void
.end method

.method private final b(Z)Lkotlinx/coroutines/b/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 874
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget p1, p1, Lkotlinx/coroutines/b/a;->e:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/a$b;->b(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 875
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->i()Lkotlinx/coroutines/b/i;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 876
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/n;->c()Lkotlinx/coroutines/b/i;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez p1, :cond_4

    .line 877
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->i()Lkotlinx/coroutines/b/i;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 879
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->i()Lkotlinx/coroutines/b/i;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 881
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a$b;->c(Z)Lkotlinx/coroutines/b/i;

    move-result-object p0

    return-object p0
.end method

.method private final c(Z)Lkotlinx/coroutines/b/i;
    .locals 17

    move-object/from16 v0, p0

    .line 895
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/n;->b()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 896
    :cond_2
    :goto_1
    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_3

    return-object v5

    .line 902
    :cond_3
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/b/a$b;->b(I)I

    move-result v4

    const-wide v6, 0x7fffffffffffffffL

    move v10, v4

    move-wide v8, v6

    move v4, v2

    :goto_2
    const-wide/16 v11, 0x0

    if-ge v4, v1, :cond_b

    add-int/2addr v10, v3

    if-le v10, v1, :cond_4

    move v10, v3

    .line 907
    :cond_4
    iget-object v13, v0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v13, v13, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/b/a$b;

    if-eqz v13, :cond_a

    .line 908
    move-object v14, v0

    check-cast v14, Lkotlinx/coroutines/b/a$b;

    if-eq v13, v14, :cond_a

    .line 909
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v14}, Lkotlinx/coroutines/b/n;->b()I

    move-result v14

    if-nez v14, :cond_5

    move v14, v3

    goto :goto_3

    :cond_5
    move v14, v2

    :goto_3
    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 911
    iget-object v14, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    iget-object v13, v13, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/b/n;->b(Lkotlinx/coroutines/b/n;)J

    move-result-wide v13

    goto :goto_5

    .line 913
    :cond_8
    iget-object v14, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    iget-object v13, v13, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/b/n;->a(Lkotlinx/coroutines/b/n;)J

    move-result-wide v13

    :goto_5
    const-wide/16 v15, -0x1

    cmp-long v15, v13, v15

    if-nez v15, :cond_9

    .line 916
    iget-object v0, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/n;->c()Lkotlinx/coroutines/b/i;

    move-result-object v0

    return-object v0

    :cond_9
    cmp-long v11, v13, v11

    if-lez v11, :cond_a

    .line 918
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v8, v6

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-wide v8, v11

    .line 922
    :goto_6
    iput-wide v8, v0, Lkotlinx/coroutines/b/a$b;->g:J

    return-object v5
.end method

.method private final c(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 745
    :cond_0
    sget-object p1, Lkotlinx/coroutines/b/a$c;->BLOCKING:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 746
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {p0}, Lkotlinx/coroutines/b/a;->b()V

    :cond_1
    return-void
.end method

.method private final c()Z
    .locals 10

    .line 645
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v1, Lkotlinx/coroutines/b/a$c;->CPU_ACQUIRED:Lkotlinx/coroutines/b/a$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 646
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 974
    :cond_1
    iget-wide v6, v0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    .line 979
    sget-object v4, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 647
    sget-object v0, Lkotlinx/coroutines/b/a$c;->CPU_ACQUIRED:Lkotlinx/coroutines/b/a$c;

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    return v3
.end method

.method private final d()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 672
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v2}, Lkotlinx/coroutines/b/a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v3, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    if-eq v2, v3, :cond_3

    .line 673
    iget-boolean v2, p0, Lkotlinx/coroutines/b/a$b;->d:Z

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/b/a$b;->a(Z)Lkotlinx/coroutines/b/i;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 677
    iput-wide v3, p0, Lkotlinx/coroutines/b/a$b;->g:J

    .line 678
    invoke-direct {p0, v2}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/i;)V

    goto :goto_0

    .line 681
    :cond_0
    iput-boolean v0, p0, Lkotlinx/coroutines/b/a$b;->d:Z

    .line 694
    iget-wide v5, p0, Lkotlinx/coroutines/b/a$b;->g:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 699
    :cond_1
    sget-object v1, Lkotlinx/coroutines/b/a$c;->PARKING:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    .line 700
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 701
    iget-wide v1, p0, Lkotlinx/coroutines/b/a$b;->g:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 702
    iput-wide v3, p0, Lkotlinx/coroutines/b/a$b;->g:J

    goto :goto_0

    .line 711
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->e()V

    goto :goto_1

    .line 713
    :cond_3
    sget-object v0, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    return-void
.end method

.method private final d(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 752
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 984
    sget-object v0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 753
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    .line 755
    sget-object v0, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    if-eq p1, v0, :cond_4

    .line 756
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/b/a$c;->BLOCKING:Lkotlinx/coroutines/b/a$c;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 757
    :cond_3
    :goto_1
    sget-object p1, Lkotlinx/coroutines/b/a$c;->DORMANT:Lkotlinx/coroutines/b/a$c;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    :cond_4
    return-void
.end method

.method private final e()V
    .locals 2

    .line 718
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;)Z

    return-void

    .line 722
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/n;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 723
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->workerCtl:I

    .line 724
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 725
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v1, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 726
    :cond_4
    sget-object v0, Lkotlinx/coroutines/b/a$c;->PARKING:Lkotlinx/coroutines/b/a$c;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->a(Lkotlinx/coroutines/b/a$c;)Z

    .line 727
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 728
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->g()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private final e(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 850
    iput-wide v0, p0, Lkotlinx/coroutines/b/a$b;->f:J

    .line 851
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    sget-object v1, Lkotlinx/coroutines/b/a$c;->PARKING:Lkotlinx/coroutines/b/a$c;

    if-ne v0, v1, :cond_3

    .line 852
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 853
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/b/a$c;->BLOCKING:Lkotlinx/coroutines/b/a$c;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    :cond_3
    return-void
.end method

.method private final f()Z
    .locals 1

    .line 732
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v0, Lkotlinx/coroutines/b/a;->i:Lkotlinx/coroutines/internal/r;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final g()V
    .locals 6

    .line 781
    iget-wide v0, p0, Lkotlinx/coroutines/b/a$b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-wide v4, v4, Lkotlinx/coroutines/b/a;->g:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/b/a$b;->f:J

    .line 783
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-wide v0, v0, Lkotlinx/coroutines/b/a;->g:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 786
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/b/a$b;->f:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 787
    iput-wide v2, p0, Lkotlinx/coroutines/b/a$b;->f:J

    .line 788
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->h()V

    :cond_1
    return-void
.end method

.method private final h()V
    .locals 6

    .line 796
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 986
    monitor-enter v0

    .line 798
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/a;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 800
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;)I

    move-result v1

    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget v2, v2, Lkotlinx/coroutines/b/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 805
    :cond_1
    :try_start_2
    sget-object v1, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 812
    :cond_2
    :try_start_3
    iget v1, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    const/4 v2, 0x0

    .line 813
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/b/a$b;->a(I)V

    .line 821
    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v3, p0, v1, v2}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;II)V

    .line 826
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 987
    sget-object v3, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v2, v1, :cond_3

    .line 828
    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v3, v3, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    check-cast v3, Lkotlinx/coroutines/b/a$b;

    .line 829
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v4, v4, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 830
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/b/a$b;->a(I)V

    .line 838
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v4, v3, v2, v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;II)V

    .line 843
    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v1, v1, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 844
    sget-object v1, Lc/s;->a:Lc/s;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    .line 845
    sget-object v0, Lkotlinx/coroutines/b/a$c;->TERMINATED:Lkotlinx/coroutines/b/a$c;

    iput-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    return-void

    :catchall_0
    move-exception p0

    .line 844
    monitor-exit v0

    throw p0
.end method

.method private final i()Lkotlinx/coroutines/b/i;
    .locals 1

    const/4 v0, 0x2

    .line 885
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 886
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/i;

    if-eqz v0, :cond_0

    return-object v0

    .line 887
    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object p0, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/b/i;

    return-object p0

    .line 889
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/i;

    if-eqz v0, :cond_2

    return-object v0

    .line 890
    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object p0, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/b/i;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 587
    iget p0, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    return p0
.end method

.method public final a(Z)Lkotlinx/coroutines/b/i;
    .locals 1

    .line 858
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;->b(Z)Lkotlinx/coroutines/b/i;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 861
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/n;->c()Lkotlinx/coroutines/b/i;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object p1, p1, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/b/i;

    goto :goto_0

    .line 863
    :cond_2
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object p1, p1, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/b/i;

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 865
    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;->c(Z)Lkotlinx/coroutines/b/i;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(I)V
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v1, v1, Lkotlinx/coroutines/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->setName(Ljava/lang/String;)V

    .line 590
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlinx/coroutines/b/a$c;)Z
    .locals 6

    .line 658
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    .line 659
    sget-object v1, Lkotlinx/coroutines/b/a$c;->CPU_ACQUIRED:Lkotlinx/coroutines/b/a$c;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 660
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 981
    sget-object v3, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 661
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->b:Lkotlinx/coroutines/b/a$c;

    :cond_2
    return v1
.end method

.method public final b(I)I
    .locals 2

    .line 766
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->h:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 770
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->h:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    .line 776
    rem-int/2addr p0, p1

    return p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    .line 631
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public run()V
    .locals 0

    .line 665
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->d()V

    return-void
.end method
