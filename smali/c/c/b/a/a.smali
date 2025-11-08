.class public abstract Lc/c/b/a/a;
.super Ljava/lang/Object;
.source "ContinuationImpl.kt"

# interfaces
.implements Lc/c/b/a/d;
.implements Lc/c/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/b/a/d;",
        "Lc/c/d<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final completion:Lc/c/d;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/a/a;->completion:Lc/c/d;

    return-void
.end method


# virtual methods
.method public create(Lc/c/d;)Lc/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "*>;)",
            "Lc/c/d<",
            "Lc/s;",
            ">;"
        }
    .end annotation

    const-string p0, "completion"

    invoke-static {p1, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "create(Continuation) has not been overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public create(Ljava/lang/Object;Lc/c/d;)Lc/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc/c/d<",
            "*>;)",
            "Lc/c/d<",
            "Lc/s;",
            ">;"
        }
    .end annotation

    const-string p0, "completion"

    invoke-static {p2, p0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public getCallerFrame()Lc/c/b/a/d;
    .locals 1

    .line 73
    iget-object p0, p0, Lc/c/b/a/a;->completion:Lc/c/d;

    instance-of v0, p0, Lc/c/b/a/d;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lc/c/b/a/d;

    return-object p0
.end method

.method public final getCompletion()Lc/c/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lc/c/b/a/a;->completion:Lc/c/d;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    .line 76
    invoke-static {p0}, Lc/c/b/a/f;->a(Lc/c/b/a/a;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method protected abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected releaseIntercepted()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    .line 23
    check-cast p0, Lc/c/b/a/a;

    .line 28
    :goto_0
    move-object v0, p0

    check-cast v0, Lc/c/d;

    invoke-static {v0}, Lc/c/b/a/g;->b(Lc/c/d;)V

    .line 30
    iget-object v0, p0, Lc/c/b/a/a;->completion:Lc/c/d;

    invoke-static {v0}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lc/c/b/a/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    invoke-static {}, Lc/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    sget-object v1, Lc/m;->Companion:Lc/m$a;

    invoke-static {p1}, Lc/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lc/m;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    :goto_1
    invoke-virtual {p0}, Lc/c/b/a/a;->releaseIntercepted()V

    .line 40
    instance-of p0, v0, Lc/c/b/a/a;

    if-eqz p0, :cond_1

    .line 42
    move-object p0, v0

    check-cast p0, Lc/c/b/a/a;

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v0, p1}, Lc/c/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/c/b/a/a;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/io/Serializable;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
