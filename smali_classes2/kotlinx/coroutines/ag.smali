.class public final Lkotlinx/coroutines/ag;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/r;

.field private static final b:Lkotlinx/coroutines/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/ag;->b:Lkotlinx/coroutines/internal/r;

    .line 17
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/ag;->a:Lkotlinx/coroutines/internal/r;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/ag;->b:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

.method public static final a(Lc/c/d;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 249
    instance-of v0, p0, Lkotlinx/coroutines/af;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/af;

    .line 284
    invoke-static {p1}, Lkotlinx/coroutines/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/t;

    invoke-virtual {p0}, Lkotlinx/coroutines/af;->getContext()Lc/c/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/t;->a(Lc/c/g;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 286
    iput-object v0, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    .line 287
    iput v2, p0, Lkotlinx/coroutines/af;->e:I

    .line 288
    iget-object p1, p0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/t;

    invoke-virtual {p0}, Lkotlinx/coroutines/af;->getContext()Lc/c/g;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/t;->a(Lc/c/g;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 294
    :cond_0
    sget-object v1, Lkotlinx/coroutines/bm;->a:Lkotlinx/coroutines/bm;

    invoke-virtual {v1}, Lkotlinx/coroutines/bm;->a()Lkotlinx/coroutines/am;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Lkotlinx/coroutines/am;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    iput-object v0, p0, Lkotlinx/coroutines/af;->a:Ljava/lang/Object;

    .line 300
    iput v2, p0, Lkotlinx/coroutines/af;->e:I

    .line 301
    check-cast p0, Lkotlinx/coroutines/ah;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/am;->a(Lkotlinx/coroutines/ah;)V

    goto :goto_4

    .line 305
    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ah;

    .line 306
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/am;->a(Z)V

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/af;->getContext()Lc/c/g;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/ay;->b:Lkotlinx/coroutines/ay$b;

    check-cast v4, Lc/c/g$c;

    invoke-interface {v3, v4}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/ay;

    if-eqz v3, :cond_2

    .line 319
    invoke-interface {v3}, Lkotlinx/coroutines/ay;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 320
    invoke-interface {v3}, Lkotlinx/coroutines/ay;->h()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    sget-object v4, Lc/m;->Companion:Lc/m$a;

    invoke-static {v3}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 329
    invoke-virtual {p0}, Lkotlinx/coroutines/af;->getContext()Lc/c/g;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/af;->b:Ljava/lang/Object;

    .line 330
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    iget-object p0, p0, Lkotlinx/coroutines/af;->d:Lc/c/d;

    invoke-interface {p0, p1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    .line 334
    sget-object p0, Lc/s;->a:Lc/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :try_start_2
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    throw p0

    .line 340
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/am;->e()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 347
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    :goto_2
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/am;->b(Z)V

    goto :goto_4

    :goto_3
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/am;->b(Z)V

    throw p0

    .line 250
    :cond_4
    invoke-interface {p0, p1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
