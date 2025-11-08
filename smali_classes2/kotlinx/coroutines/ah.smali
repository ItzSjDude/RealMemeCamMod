.class public abstract Lkotlinx/coroutines/ah;
.super Lkotlinx/coroutines/b/i;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/b/i;"
    }
.end annotation


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lkotlinx/coroutines/b/i;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/ah;->e:I

    return-void
.end method


# virtual methods
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

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 178
    invoke-static {p1, p2}, Lc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 93
    :goto_0
    new-instance p2, Lkotlinx/coroutines/ab;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    .line 93
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0}, Lkotlinx/coroutines/ah;->e()Lc/c/d;

    move-result-object p0

    invoke-interface {p0}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object p0

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p2}, Lkotlinx/coroutines/v;->a(Lc/c/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 32
    instance-of p0, p1, Lkotlinx/coroutines/l;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lkotlinx/coroutines/l;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lkotlinx/coroutines/l;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public abstract e()Lc/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final run()V
    .locals 9

    .line 35
    iget-object v0, p0, Lkotlinx/coroutines/ah;->g:Lkotlinx/coroutines/b/j;

    const/4 v1, 0x0

    .line 36
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ah;->e()Lc/c/d;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lkotlinx/coroutines/af;

    .line 39
    iget-object v4, v3, Lkotlinx/coroutines/af;->d:Lc/c/d;

    .line 40
    invoke-interface {v4}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lkotlinx/coroutines/ah;->b()Ljava/lang/Object;

    move-result-object v6

    .line 42
    iget-object v3, v3, Lkotlinx/coroutines/af;->b:Ljava/lang/Object;

    .line 169
    invoke-static {v5, v3}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/ah;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    .line 44
    iget v8, p0, Lkotlinx/coroutines/ah;->e:I

    invoke-static {v8}, Lkotlinx/coroutines/ai;->a(I)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v1, Lkotlinx/coroutines/ay;->b:Lkotlinx/coroutines/ay$b;

    check-cast v1, Lc/c/g$c;

    invoke-interface {v5, v1}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/ay;

    :cond_0
    if-nez v7, :cond_3

    if-eqz v1, :cond_3

    .line 50
    invoke-interface {v1}, Lkotlinx/coroutines/ay;->b()Z

    move-result v8

    if-nez v8, :cond_3

    .line 51
    invoke-interface {v1}, Lkotlinx/coroutines/ay;->h()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 52
    move-object v7, v1

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v7}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 172
    sget-object v6, Lc/m;->Companion:Lc/m$a;

    .line 173
    invoke-static {}, Lkotlinx/coroutines/ac;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, v4, Lc/c/b/a/d;

    if-nez v6, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    check-cast v1, Ljava/lang/Throwable;

    move-object v6, v4

    check-cast v6, Lc/c/b/a/d;

    invoke-static {v1, v6}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Throwable;Lc/c/b/a/d;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 173
    :cond_2
    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    .line 172
    :goto_1
    invoke-static {v1}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 55
    sget-object v1, Lc/m;->Companion:Lc/m$a;

    invoke-static {v7}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p0, v6}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lc/m;->Companion:Lc/m$a;

    invoke-static {v1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    .line 58
    :goto_2
    sget-object v1, Lc/s;->a:Lc/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-static {v5, v3}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :try_start_3
    sget-object v1, Lc/m;->Companion:Lc/m$a;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/ah;

    invoke-interface {v0}, Lkotlinx/coroutines/b/j;->a()V

    sget-object v0, Lc/s;->a:Lc/s;

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lc/m;->Companion:Lc/m$a;

    invoke-static {v0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_3
    invoke-static {v0}, Lc/m;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 176
    :try_start_4
    invoke-static {v5, v3}, Lkotlinx/coroutines/internal/v;->b(Lc/c/g;Ljava/lang/Object;)V

    throw v1

    .line 38
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 63
    :try_start_5
    sget-object v3, Lc/m;->Companion:Lc/m$a;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/ah;

    invoke-interface {v0}, Lkotlinx/coroutines/b/j;->a()V

    sget-object v0, Lc/s;->a:Lc/s;

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v3, Lc/m;->Companion:Lc/m$a;

    invoke-static {v0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_4
    invoke-static {v0}, Lc/m;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    .line 63
    :try_start_6
    sget-object v2, Lc/m;->Companion:Lc/m$a;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/ah;

    invoke-interface {v0}, Lkotlinx/coroutines/b/j;->a()V

    sget-object v0, Lc/s;->a:Lc/s;

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    sget-object v2, Lc/m;->Companion:Lc/m$a;

    invoke-static {v0}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_5
    invoke-static {v0}, Lc/m;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
