.class final Lc/o;
.super Ljava/lang/Object;
.source "LazyJVM.kt"

# interfaces
.implements Lc/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/g<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private volatile _value:Ljava/lang/Object;

.field private initializer:Lc/f/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/f/a/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/f/a/a<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lc/o;->initializer:Lc/f/a/a;

    .line 57
    sget-object p1, Lc/q;->a:Lc/q;

    iput-object p1, p0, Lc/o;->_value:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 59
    :goto_0
    iput-object p2, p0, Lc/o;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lc/f/a/a;Ljava/lang/Object;ILc/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lc/o;-><init>(Lc/f/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 86
    new-instance v0, Lc/d;

    invoke-virtual {p0}, Lc/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lc/o;->_value:Ljava/lang/Object;

    .line 64
    sget-object v1, Lc/q;->a:Lc/q;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lc/o;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lc/o;->_value:Ljava/lang/Object;

    .line 71
    sget-object v2, Lc/q;->a:Lc/q;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lc/o;->initializer:Lc/f/a/a;

    invoke-static {v1}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Lc/f/a/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 75
    iput-object v1, p0, Lc/o;->_value:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 76
    check-cast v2, Lc/f/a/a;

    iput-object v2, p0, Lc/o;->initializer:Lc/f/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public isInitialized()Z
    .locals 1

    .line 82
    iget-object p0, p0, Lc/o;->_value:Ljava/lang/Object;

    sget-object v0, Lc/q;->a:Lc/q;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lc/o;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
