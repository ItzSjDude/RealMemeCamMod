.class public final Lkotlinx/coroutines/a/b;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# direct methods
.method public static final a(Lc/f/a/b;Lc/c/d;)V
    .locals 3
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

    .line 168
    invoke-static {p1}, Lc/c/b/a/g;->a(Lc/c/d;)Lc/c/d;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-interface {p1}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object p1

    const/4 v1, 0x0

    .line 171
    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 42
    :try_start_1
    invoke-static {p0, v2}, Lc/f/b/m;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/f/a/b;

    invoke-interface {p0, v0}, Lc/f/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    invoke-static {}, Lc/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    .line 182
    sget-object p1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 42
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :goto_0
    :try_start_4
    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 177
    sget-object p1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V
    .locals 3
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

    .line 186
    invoke-static {p2}, Lc/c/b/a/g;->a(Lc/c/d;)Lc/c/d;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-interface {p2}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object p2

    const/4 v1, 0x0

    .line 189
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    .line 55
    :try_start_1
    invoke-static {p0, v2}, Lc/f/b/m;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/f/a/m;

    invoke-interface {p0, p1, v0}, Lc/f/a/m;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    invoke-static {}, Lc/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    .line 200
    sget-object p1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 55
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :goto_0
    :try_start_4
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 195
    sget-object p1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
