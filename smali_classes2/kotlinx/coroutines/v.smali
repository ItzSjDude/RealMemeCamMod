.class public final Lkotlinx/coroutines/v;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"


# direct methods
.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    if-ne p0, p1, :cond_0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while trying to handle coroutine exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    check-cast v0, Ljava/lang/Throwable;

    .line 111
    invoke-static {v0, p0}, Lc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final a(Lc/c/g;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    check-cast v0, Lc/c/g$c;

    invoke-interface {p0, v0}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandler;->handleException(Lc/c/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/u;->a(Lc/c/g;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    .line 29
    invoke-static {p1, v0}, Lkotlinx/coroutines/v;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/u;->a(Lc/c/g;Ljava/lang/Throwable;)V

    return-void
.end method
