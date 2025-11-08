.class Lc/c/a/c;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"


# direct methods
.method public static final a(Lc/c/d;)Lc/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/d<",
            "-TT;>;)",
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$intercepted"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    instance-of v0, p0, Lc/c/b/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lc/c/b/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/b/a/c;->intercepted()Lc/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final a(Lc/f/a/b;Lc/c/d;)Lc/c/d;
    .locals 7
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
            "-TT;>;)",
            "Lc/c/d<",
            "Lc/s;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lc/c/b/a/g;->a(Lc/c/d;)Lc/c/d;

    move-result-object v4

    .line 88
    instance-of p1, p0, Lc/c/b/a/a;

    if-eqz p1, :cond_0

    .line 89
    check-cast p0, Lc/c/b/a/a;

    invoke-virtual {p0, v4}, Lc/c/b/a/a;->create(Lc/c/d;)Lc/c/d;

    move-result-object p0

    goto :goto_1

    .line 205
    :cond_0
    invoke-interface {v4}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object v5

    .line 207
    sget-object p1, Lc/c/h;->INSTANCE:Lc/c/h;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v5, p1, :cond_2

    .line 208
    new-instance p1, Lc/c/a/c$a;

    if-eqz v4, :cond_1

    invoke-direct {p1, v4, v4, p0}, Lc/c/a/c$a;-><init>(Lc/c/d;Lc/c/d;Lc/f/a/b;)V

    check-cast p1, Lc/c/b/a/a;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_2
    new-instance p1, Lc/c/a/c$b;

    if-eqz v4, :cond_3

    move-object v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lc/c/a/c$b;-><init>(Lc/c/d;Lc/c/g;Lc/c/d;Lc/c/g;Lc/f/a/b;)V

    check-cast p1, Lc/c/b/a/a;

    .line 207
    :goto_0
    move-object p0, p1

    check-cast p0, Lc/c/d;

    :goto_1
    return-object p0

    .line 209
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)Lc/c/d;
    .locals 8
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
            "-TT;>;)",
            "Lc/c/d<",
            "Lc/s;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p2}, Lc/c/b/a/g;->a(Lc/c/d;)Lc/c/d;

    move-result-object v4

    .line 123
    instance-of p2, p0, Lc/c/b/a/a;

    if-eqz p2, :cond_0

    .line 124
    check-cast p0, Lc/c/b/a/a;

    invoke-virtual {p0, p1, v4}, Lc/c/b/a/a;->create(Ljava/lang/Object;Lc/c/d;)Lc/c/d;

    move-result-object p0

    goto :goto_1

    .line 210
    :cond_0
    invoke-interface {v4}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object v5

    .line 212
    sget-object p2, Lc/c/h;->INSTANCE:Lc/c/h;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v5, p2, :cond_2

    .line 213
    new-instance p2, Lc/c/a/c$c;

    if-eqz v4, :cond_1

    invoke-direct {p2, v4, v4, p0, p1}, Lc/c/a/c$c;-><init>(Lc/c/d;Lc/c/d;Lc/f/a/m;Ljava/lang/Object;)V

    check-cast p2, Lc/c/b/a/a;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_2
    new-instance p2, Lc/c/a/c$d;

    if-eqz v4, :cond_3

    move-object v1, p2

    move-object v2, v4

    move-object v3, v5

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lc/c/a/c$d;-><init>(Lc/c/d;Lc/c/g;Lc/c/d;Lc/c/g;Lc/f/a/m;Ljava/lang/Object;)V

    check-cast p2, Lc/c/b/a/a;

    .line 212
    :goto_0
    move-object p0, p2

    check-cast p0, Lc/c/d;

    :goto_1
    return-object p0

    .line 214
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
