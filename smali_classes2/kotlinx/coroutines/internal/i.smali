.class public Lkotlinx/coroutines/internal/i;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile _next:Ljava/lang/Object;

.field volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/internal/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_prev"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/internal/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_removedRef"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p0, p0, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    .line 63
    iput-object p0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lkotlinx/coroutines/internal/i;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method private final a(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/i;
    .locals 7

    .line 560
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/i;

    const/4 v1, 0x0

    .line 562
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/i;

    move-object v3, v0

    :goto_1
    move-object v4, v2

    .line 564
    :goto_2
    iget-object v5, v3, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    .line 567
    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/internal/i;

    if-ne v5, v6, :cond_2

    if-ne v0, v3, :cond_0

    return-object v3

    .line 570
    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v3

    .line 577
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v1

    :cond_3
    if-ne v5, p1, :cond_4

    return-object v3

    .line 579
    :cond_4
    instance-of v6, v5, Lkotlinx/coroutines/internal/o;

    if-eqz v6, :cond_6

    if-eqz p1, :cond_5

    .line 580
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/internal/o;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/o;->a(Lkotlinx/coroutines/internal/o;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 582
    :cond_5
    check-cast v5, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v5, v3}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_6
    instance-of v6, v5, Lkotlinx/coroutines/internal/p;

    if-eqz v6, :cond_9

    if-eqz v4, :cond_8

    .line 588
    sget-object v6, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v5, Lkotlinx/coroutines/internal/p;

    iget-object v5, v5, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v6, v4, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    move-object v3, v4

    goto :goto_1

    .line 594
    :cond_8
    iget-object v3, v3, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/internal/i;

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    .line 599
    check-cast v5, Lkotlinx/coroutines/internal/i;

    move-object v4, v3

    move-object v3, v5

    goto :goto_2

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/i;->c(Lkotlinx/coroutines/internal/i;)V

    return-void
.end method

.method private final b(Lkotlinx/coroutines/internal/i;)Lkotlinx/coroutines/internal/i;
    .locals 0

    .line 113
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/i;->d()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 114
    :cond_0
    iget-object p0, p1, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/internal/i;

    goto :goto_0
.end method

.method private final c(Lkotlinx/coroutines/internal/i;)V
    .locals 2

    .line 669
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/i;

    .line 534
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    return-void

    .line 535
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->d()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/i;->a(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/i;

    :cond_2
    return-void
.end method

.method private final i()Lkotlinx/coroutines/internal/p;
    .locals 2

    .line 67
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/internal/p;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/p;-><init>(Lkotlinx/coroutines/internal/i;)V

    sget-object v1, Lkotlinx/coroutines/internal/i;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i$a;)I
    .locals 1

    .line 222
    sget-object v0, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    sget-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    iput-object p2, p3, Lkotlinx/coroutines/internal/i$a;->d:Lkotlinx/coroutines/internal/i;

    .line 225
    sget-object p1, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 227
    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/i$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public final a(Lkotlinx/coroutines/internal/i;)Z
    .locals 2

    .line 120
    sget-object v0, Lkotlinx/coroutines/internal/i;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v0

    .line 124
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/i;->c(Lkotlinx/coroutines/internal/i;)V

    const/4 p0, 0x1

    return p0
.end method

.method public c()Z
    .locals 0

    .line 241
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->h()Lkotlinx/coroutines/internal/i;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 0

    .line 91
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/internal/p;

    return p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 661
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_next:Ljava/lang/Object;

    .line 96
    instance-of v1, v0, Lkotlinx/coroutines/internal/o;

    if-nez v1, :cond_0

    return-object v0

    .line 97
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/o;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f()Lkotlinx/coroutines/internal/i;
    .locals 0

    .line 102
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;)Lkotlinx/coroutines/internal/i;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lkotlinx/coroutines/internal/i;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/i;->a(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/i;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/i;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/i;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/internal/i;)Lkotlinx/coroutines/internal/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()Lkotlinx/coroutines/internal/i;
    .locals 4

    .line 247
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/i;->e()Ljava/lang/Object;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lkotlinx/coroutines/internal/p;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/p;

    iget-object p0, v0, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/i;

    return-object p0

    .line 249
    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    if-ne v0, v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/i;

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 250
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/i;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/i;->i()Lkotlinx/coroutines/internal/p;

    move-result-object v2

    .line 251
    sget-object v3, Lkotlinx/coroutines/internal/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 253
    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/i;->a(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/i;

    return-object p0

    .line 250
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
