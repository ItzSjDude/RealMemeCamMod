.class public abstract Lc/c/b/a/c;
.super Lc/c/b/a/a;
.source "ContinuationImpl.kt"


# instance fields
.field private final _context:Lc/c/g;

.field private transient intercepted:Lc/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lc/c/b/a/c;-><init>(Lc/c/d;Lc/c/g;)V

    return-void
.end method

.method public constructor <init>(Lc/c/d;Lc/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lc/c/g;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lc/c/b/a/a;-><init>(Lc/c/d;)V

    iput-object p2, p0, Lc/c/b/a/c;->_context:Lc/c/g;

    return-void
.end method


# virtual methods
.method public getContext()Lc/c/g;
    .locals 0

    .line 105
    iget-object p0, p0, Lc/c/b/a/c;->_context:Lc/c/g;

    invoke-static {p0}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lc/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lc/c/b/a/c;->intercepted:Lc/c/d;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lc/c/b/a/c;->getContext()Lc/c/g;

    move-result-object v0

    sget-object v1, Lc/c/e;->a:Lc/c/e$b;

    check-cast v1, Lc/c/g$c;

    invoke-interface {v0, v1}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v0

    check-cast v0, Lc/c/e;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lc/c/d;

    invoke-interface {v0, v1}, Lc/c/e;->a(Lc/c/d;)Lc/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lc/c/d;

    .line 113
    :goto_0
    iput-object v0, p0, Lc/c/b/a/c;->intercepted:Lc/c/d;

    :goto_1
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    .line 116
    iget-object v0, p0, Lc/c/b/a/c;->intercepted:Lc/c/d;

    if-eqz v0, :cond_0

    .line 117
    move-object v1, p0

    check-cast v1, Lc/c/b/a/c;

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lc/c/b/a/c;->getContext()Lc/c/g;

    move-result-object v1

    sget-object v2, Lc/c/e;->a:Lc/c/e$b;

    check-cast v2, Lc/c/g$c;

    invoke-interface {v1, v2}, Lc/c/g;->get(Lc/c/g$c;)Lc/c/g$b;

    move-result-object v1

    invoke-static {v1}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    check-cast v1, Lc/c/e;

    invoke-interface {v1, v0}, Lc/c/e;->b(Lc/c/d;)V

    .line 120
    :cond_0
    sget-object v0, Lc/c/b/a/b;->a:Lc/c/b/a/b;

    check-cast v0, Lc/c/d;

    iput-object v0, p0, Lc/c/b/a/c;->intercepted:Lc/c/d;

    return-void
.end method
