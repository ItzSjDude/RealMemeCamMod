.class public abstract Lc/c/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lc/c/g$b;


# instance fields
.field private final key:Lc/c/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/g$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a;->key:Lc/c/g$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lc/f/a/m<",
            "-TR;-",
            "Lc/c/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1, p2}, Lc/c/g$b$a;->a(Lc/c/g$b;Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lc/c/g$c;)Lc/c/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc/c/g$b;",
            ">(",
            "Lc/c/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lc/c/g$b$a;->a(Lc/c/g$b;Lc/c/g$c;)Lc/c/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lc/c/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/g$c<",
            "*>;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lc/c/a;->key:Lc/c/g$c;

    return-object p0
.end method

.method public minusKey(Lc/c/g$c;)Lc/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "*>;)",
            "Lc/c/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lc/c/g$b$a;->b(Lc/c/g$b;Lc/c/g$c;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lc/c/g;)Lc/c/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lc/c/g$b$a;->a(Lc/c/g$b;Lc/c/g;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method
