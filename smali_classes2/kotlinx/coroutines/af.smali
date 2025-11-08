.class public final Lkotlinx/coroutines/af;
.super Lkotlinx/coroutines/ah;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lc/c/b/a/d;
.implements Lc/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/ah<",
        "TT;>;",
        "Lc/c/b/a/d;",
        "Lc/c/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlinx/coroutines/t;

.field public final d:Lc/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lc/c/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/af;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/af;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/t;Lc/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/t;",
            "Lc/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lkotlinx/coroutines/ah;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/t;

    iput-object p2, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    .line 25
    invoke-static {}, Lkotlinx/coroutines/ag;->a()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    instance-of p2, p1, Lc/c/b/a/d;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lc/c/b/a/d;

    iput-object p1, p0, Lkotlinx/coroutines/af;->h:Lc/c/b/a/d;

    .line 29
    invoke-virtual {p0}, Lkotlinx/coroutines/af;->getContext()Lc/c/g;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/af;->b:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lkotlinx/coroutines/af;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/f<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lkotlinx/coroutines/af;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v0, p0, Lkotlinx/coroutines/f;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/f;

    return-object p0
.end method

.method public final a(Lkotlinx/coroutines/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/f<",
            "*>;)Z"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lkotlinx/coroutines/af;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 81
    instance-of v1, p0, Lkotlinx/coroutines/f;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p0, p1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .line 169
    iget-object v0, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    .line 170
    invoke-static {}, Lkotlinx/coroutines/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/ag;->a()Lkotlinx/coroutines/internal/r;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 171
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/ag;->a()Lkotlinx/coroutines/internal/r;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lc/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation

    .line 176
    check-cast p0, Lc/c/d;

    return-object p0
.end method

.method public getCallerFrame()Lc/c/b/a/d;
    .locals 0

    .line 26
    iget-object p0, p0, Lkotlinx/coroutines/af;->h:Lc/c/b/a/d;

    return-object p0
.end method

.method public getContext()Lc/c/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    invoke-interface {p0}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5

    .line 179
    iget-object v0, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    invoke-interface {v0}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object v0

    .line 180
    invoke-static {p1}, Lkotlinx/coroutines/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/t;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/t;->a(Lc/c/g;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 182
    iput-object v1, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    .line 183
    iput v3, p0, Lkotlinx/coroutines/af;->e:I

    .line 184
    iget-object p1, p0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/t;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/t;->a(Lc/c/g;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 294
    :cond_0
    sget-object v0, Lkotlinx/coroutines/bm;->a:Lkotlinx/coroutines/bm;

    invoke-virtual {v0}, Lkotlinx/coroutines/bm;->a()Lkotlinx/coroutines/am;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lkotlinx/coroutines/am;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    iput-object v1, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    .line 300
    iput v3, p0, Lkotlinx/coroutines/af;->e:I

    .line 301
    check-cast p0, Lkotlinx/coroutines/ah;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/am;->a(Lkotlinx/coroutines/ah;)V

    goto :goto_1

    .line 305
    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/ah;

    const/4 v2, 0x1

    .line 306
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/am;->a(Z)V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/af;->getContext()Lc/c/g;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/af;->b:Ljava/lang/Object;

    .line 309
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object p0, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    invoke-interface {p0, p1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    .line 189
    sget-object p0, Lc/s;->a:Lc/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    .line 316
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/am;->e()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 313
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 323
    :try_start_3
    invoke-virtual {v1, p0, p1}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    :goto_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/am;->b(Z)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/am;->b(Z)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    invoke-static {p0}, Lkotlinx/coroutines/ad;->a(Lc/c/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
