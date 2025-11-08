.class public abstract Lc/c/b;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lc/c/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lc/c/g$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lc/c/g$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/c/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/g$c<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lc/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/b<",
            "Lc/c/g$b;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/g$c;Lc/f/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "TB;>;",
            "Lc/f/a/b<",
            "-",
            "Lc/c/g$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/c/b;->b:Lc/f/a/b;

    .line 52
    instance-of p2, p1, Lc/c/b;

    if-eqz p2, :cond_0

    check-cast p1, Lc/c/b;

    iget-object p1, p1, Lc/c/b;->a:Lc/c/g$c;

    :cond_0
    iput-object p1, p0, Lc/c/b;->a:Lc/c/g$c;

    return-void
.end method


# virtual methods
.method public final a(Lc/c/g$b;)Lc/c/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$b;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lc/c/b;->b:Lc/f/a/b;

    invoke-interface {p0, p1}, Lc/f/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/g$b;

    return-object p0
.end method

.method public final a(Lc/c/g$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/f/b/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    check-cast v0, Lc/c/b;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lc/c/b;->a:Lc/c/g$c;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
