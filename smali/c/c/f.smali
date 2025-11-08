.class public final Lc/c/f;
.super Ljava/lang/Object;
.source "Continuation.kt"


# direct methods
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

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0, p1}, Lc/c/a/b;->a(Lc/f/a/b;Lc/c/d;)Lc/c/d;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/b;->a(Lc/c/d;)Lc/c/d;

    move-result-object p0

    sget-object p1, Lc/s;->a:Lc/s;

    sget-object v0, Lc/m;->Companion:Lc/m$a;

    invoke-static {p1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V
    .locals 1
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

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1, p2}, Lc/c/a/b;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)Lc/c/d;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/b;->a(Lc/c/d;)Lc/c/d;

    move-result-object p0

    sget-object p1, Lc/s;->a:Lc/s;

    sget-object p2, Lc/m;->Companion:Lc/m$a;

    invoke-static {p1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
