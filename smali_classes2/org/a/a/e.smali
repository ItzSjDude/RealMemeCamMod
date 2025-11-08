.class public Lorg/a/a/e;
.super Lorg/a/j;
.source "IsCollectionContaining.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/j<",
        "Ljava/lang/Iterable<",
        "-TT;>;>;"
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

    .line 17
    invoke-direct {p0}, Lorg/a/j;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/a/a/e;->a:Lorg/a/f;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/a/f<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/a/a/e;

    invoke-static {p0}, Lorg/a/a/f;->a(Ljava/lang/Object;)Lorg/a/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/e;-><init>(Lorg/a/f;)V

    return-object v0
.end method

.method public static a(Lorg/a/f;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "-TT;>;)",
            "Lorg/a/f<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/a/a/e;

    invoke-direct {v0, p0}, Lorg/a/a/e;-><init>(Lorg/a/f;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lorg/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/a/f<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 120
    invoke-static {v3}, Lorg/a/a/e;->a(Ljava/lang/Object;)Lorg/a/f;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v0}, Lorg/a/a/a;->a(Ljava/lang/Iterable;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Lorg/a/f;)Lorg/a/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/a/f<",
            "-TT;>;)",
            "Lorg/a/f<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 98
    new-instance v4, Lorg/a/a/e;

    invoke-direct {v4, v3}, Lorg/a/a/e;-><init>(Lorg/a/f;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Lorg/a/a/a;->a(Ljava/lang/Iterable;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/Iterable;Lorg/a/d;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "-TT;>;",
            "Lorg/a/d;",
            ")Z"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    iget-object v4, p0, Lorg/a/a/e;->a:Lorg/a/f;

    invoke-interface {v4, v3}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    if-eqz v2, :cond_1

    const-string v2, ", "

    .line 29
    invoke-interface {p2, v2}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 31
    :cond_1
    iget-object v2, p0, Lorg/a/a/e;->a:Lorg/a/f;

    invoke-interface {v2, v3, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    move v2, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/a/d;)Z
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/e;->a(Ljava/lang/Iterable;Lorg/a/d;)Z

    move-result p0

    return p0
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "a collection containing "

    .line 39
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/e;->a:Lorg/a/f;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    return-void
.end method
