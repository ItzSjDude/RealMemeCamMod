.class public Lorg/a/a/c;
.super Lorg/a/j;
.source "Every.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/j<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/f<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/f<",
            "-TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lorg/a/j;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/a/a/c;->a:Lorg/a/f;

    return-void
.end method

.method public static a(Lorg/a/f;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "TU;>;)",
            "Lorg/a/f<",
            "Ljava/lang/Iterable<",
            "TU;>;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/a/a/c;

    invoke-direct {v0, p0}, Lorg/a/a/c;-><init>(Lorg/a/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;Lorg/a/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/a/d;",
            ")Z"
        }
    .end annotation

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/a/a/c;->a:Lorg/a/f;

    invoke-interface {v1, v0}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "an item "

    .line 19
    invoke-interface {p2, p1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 20
    iget-object p0, p0, Lorg/a/a/c;->a:Lorg/a/f;

    invoke-interface {p0, v0, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lorg/a/d;)Z
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/c;->a(Ljava/lang/Iterable;Lorg/a/d;)Z

    move-result p0

    return p0
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "every item is "

    .line 29
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/c;->a:Lorg/a/f;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    return-void
.end method
