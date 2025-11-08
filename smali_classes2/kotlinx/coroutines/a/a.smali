.class public final Lkotlinx/coroutines/a/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method public static final a(Lc/c/d;Lc/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "-",
            "Lc/s;",
            ">;",
            "Lc/c/d<",
            "*>;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-static {p0}, Lc/c/a/b;->a(Lc/c/d;)Lc/c/d;

    move-result-object p0

    sget-object v0, Lc/m;->Companion:Lc/m$a;

    sget-object v0, Lc/s;->a:Lc/s;

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlinx/coroutines/ag;->a(Lc/c/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    sget-object v0, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lc/f/a/b;Lc/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/f/a/b<",
            "-",
            "Lc/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lc/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 17
    :try_start_0
    invoke-static {p0, p1}, Lc/c/a/b;->a(Lc/f/a/b;Lc/c/d;)Lc/c/d;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/b;->a(Lc/c/d;)Lc/c/d;

    move-result-object p0

    sget-object v0, Lc/m;->Companion:Lc/m$a;

    sget-object v0, Lc/s;->a:Lc/s;

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlinx/coroutines/ag;->a(Lc/c/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    sget-object v0, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/f/a/m<",
            "-TR;-",
            "Lc/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lc/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-static {p0, p1, p2}, Lc/c/a/b;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)Lc/c/d;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/b;->a(Lc/c/d;)Lc/c/d;

    move-result-object p0

    sget-object p1, Lc/m;->Companion:Lc/m$a;

    sget-object p1, Lc/s;->a:Lc/s;

    invoke-static {p1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/ag;->a(Lc/c/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    sget-object p1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
