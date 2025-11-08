.class public final Lkotlinx/coroutines/m;
.super Ljava/lang/Object;
.source "CompletedExceptionally.kt"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lc/m;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/coroutines/l;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlinx/coroutines/l;-><init>(Ljava/lang/Throwable;ZILc/f/b/f;)V

    :goto_0
    return-object p0
.end method

.method public static final a(Ljava/lang/Object;Lkotlinx/coroutines/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/e<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lc/m;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    new-instance p0, Lkotlinx/coroutines/l;

    check-cast p1, Lc/c/d;

    .line 57
    invoke-static {}, Lkotlinx/coroutines/ac;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lc/c/b/a/d;

    if-nez v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lc/c/b/a/d;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Throwable;Lc/c/b/a/d;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, v0, p1, v1, v2}, Lkotlinx/coroutines/l;-><init>(Ljava/lang/Throwable;ZILc/f/b/f;)V

    :goto_1
    return-object p0
.end method
