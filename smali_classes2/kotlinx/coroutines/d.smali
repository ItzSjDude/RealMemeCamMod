.class final synthetic Lkotlinx/coroutines/d;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/y;Lc/c/g;Lkotlinx/coroutines/z;Lc/f/a/m;)Lkotlinx/coroutines/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "Lc/c/g;",
            "Lkotlinx/coroutines/z;",
            "Lc/f/a/m<",
            "-",
            "Lkotlinx/coroutines/y;",
            "-",
            "Lc/c/d<",
            "-",
            "Lc/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/ay;"
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lkotlinx/coroutines/s;->a(Lkotlinx/coroutines/y;Lc/c/g;)Lc/c/g;

    move-result-object p0

    .line 53
    invoke-virtual {p2}, Lkotlinx/coroutines/z;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lkotlinx/coroutines/be;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/be;-><init>(Lc/c/g;Lc/f/a/m;)V

    check-cast p1, Lkotlinx/coroutines/bk;

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Lkotlinx/coroutines/bk;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/bk;-><init>(Lc/c/g;Z)V

    .line 56
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/bk;->a(Lkotlinx/coroutines/z;Ljava/lang/Object;Lc/f/a/m;)V

    .line 57
    check-cast p1, Lkotlinx/coroutines/ay;

    return-object p1
.end method

.method public static synthetic a(Lkotlinx/coroutines/y;Lc/c/g;Lkotlinx/coroutines/z;Lc/f/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/ay;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 48
    sget-object p1, Lc/c/h;->INSTANCE:Lc/c/h;

    check-cast p1, Lc/c/g;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 49
    sget-object p2, Lkotlinx/coroutines/z;->DEFAULT:Lkotlinx/coroutines/z;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/y;Lc/c/g;Lkotlinx/coroutines/z;Lc/f/a/m;)Lkotlinx/coroutines/ay;

    move-result-object p0

    return-object p0
.end method
