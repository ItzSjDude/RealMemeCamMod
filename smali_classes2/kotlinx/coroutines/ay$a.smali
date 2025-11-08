.class public final Lkotlinx/coroutines/ay$a;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlinx/coroutines/ay;Lc/c/g$c;)Lc/c/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc/c/g$b;",
            ">(",
            "Lkotlinx/coroutines/ay;",
            "Lc/c/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    check-cast p0, Lc/c/g$b;

    invoke-static {p0, p1}, Lc/c/g$b$a;->a(Lc/c/g$b;Lc/c/g$c;)Lc/c/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlinx/coroutines/ay;Lc/c/g;)Lc/c/g;
    .locals 0

    check-cast p0, Lc/c/g$b;

    invoke-static {p0, p1}, Lc/c/g$b$a;->a(Lc/c/g$b;Lc/c/g;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlinx/coroutines/ay;Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ay;",
            "TR;",
            "Lc/f/a/m<",
            "-TR;-",
            "Lc/c/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    check-cast p0, Lc/c/g$b;

    invoke-static {p0, p1, p2}, Lc/c/g$b$a;->a(Lc/c/g$b;Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lkotlinx/coroutines/ay;ZZLc/f/a/b;ILjava/lang/Object;)Lkotlinx/coroutines/ak;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 353
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/ay;->a(ZZLc/f/a/b;)Lkotlinx/coroutines/ak;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lkotlinx/coroutines/ay;Lc/c/g$c;)Lc/c/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ay;",
            "Lc/c/g$c<",
            "*>;)",
            "Lc/c/g;"
        }
    .end annotation

    check-cast p0, Lc/c/g$b;

    invoke-static {p0, p1}, Lc/c/g$b$a;->b(Lc/c/g$b;Lc/c/g$c;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method
