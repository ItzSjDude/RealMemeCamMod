.class public abstract Lc/c/b/a/i;
.super Lc/c/b/a/a;
.source "ContinuationImpl.kt"


# direct methods
.method public constructor <init>(Lc/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lc/c/b/a/a;-><init>(Lc/c/d;)V

    if-eqz p1, :cond_2

    .line 86
    invoke-interface {p1}, Lc/c/d;->getContext()Lc/c/g;

    move-result-object p0

    sget-object p1, Lc/c/h;->INSTANCE:Lc/c/h;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getContext()Lc/c/g;
    .locals 0

    .line 93
    sget-object p0, Lc/c/h;->INSTANCE:Lc/c/h;

    check-cast p0, Lc/c/g;

    return-object p0
.end method
