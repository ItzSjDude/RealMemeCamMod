.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/bc;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lc/c/d;
.implements Lkotlinx/coroutines/ay;
.implements Lkotlinx/coroutines/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/bc;",
        "Lc/c/d<",
        "TT;>;",
        "Lkotlinx/coroutines/ay;",
        "Lkotlinx/coroutines/y;"
    }
.end annotation


# instance fields
.field protected final a:Lc/c/g;

.field private final c:Lc/c/g;


# direct methods
.method public constructor <init>(Lc/c/g;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lkotlinx/coroutines/bc;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/a;->a:Lc/c/g;

    .line 47
    iget-object p1, p0, Lkotlinx/coroutines/a;->a:Lc/c/g;

    move-object p2, p0

    check-cast p2, Lc/c/g;

    invoke-interface {p1, p2}, Lc/c/g;->plus(Lc/c/g;)Lc/c/g;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->c:Lc/c/g;

    return-void
.end method


# virtual methods
.method public a()Lc/c/g;
    .locals 0

    .line 52
    iget-object p0, p0, Lkotlinx/coroutines/a;->c:Lc/c/g;

    return-object p0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lkotlinx/coroutines/a;->c:Lc/c/g;

    invoke-static {p0, p1}, Lkotlinx/coroutines/v;->a(Lc/c/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public final a(Lkotlinx/coroutines/z;Ljava/lang/Object;Lc/f/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/z;",
            "TR;",
            "Lc/f/a/m<",
            "-TR;-",
            "Lc/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->c()V

    .line 158
    check-cast p0, Lc/c/d;

    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/z;->invoke(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V

    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1

    .line 101
    instance-of v0, p1, Lkotlinx/coroutines/l;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lkotlinx/coroutines/l;

    iget-object v0, p1, Lkotlinx/coroutines/l;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lkotlinx/coroutines/l;->b()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 54
    invoke-super {p0}, Lkotlinx/coroutines/bc;->b()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 2

    .line 65
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lc/c/g;

    sget-object v1, Lkotlinx/coroutines/ay;->b:Lkotlinx/coroutines/ay$b;

    check-cast v1, Lc/c/g$c;

    invoke-interface {v0, v1}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ay;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/a;->a(Lkotlinx/coroutines/ay;)V

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->f(Ljava/lang/Object;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->d()V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/ad;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lkotlinx/coroutines/a;->c:Lc/c/g;

    invoke-static {v0}, Lkotlinx/coroutines/s;->a(Lc/c/g;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/bc;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/bc;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Lc/c/g;
    .locals 0

    .line 47
    iget-object p0, p0, Lkotlinx/coroutines/a;->c:Lc/c/g;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lkotlinx/coroutines/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/internal/r;

    if-ne p1, v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->c(Ljava/lang/Object;)V

    return-void
.end method
