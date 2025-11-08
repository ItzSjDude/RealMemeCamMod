.class public Lorg/a/a/a;
.super Lorg/a/e;
.source "AllOf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lorg/a/f<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/a/f<",
            "-TT;>;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/a/e;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/a/a/a;->a:Ljava/lang/Iterable;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/a/f<",
            "-TT;>;>;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/a/a/a;

    invoke-direct {v0, p0}, Lorg/a/a/a;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/a/d;)Z
    .locals 2

    .line 26
    iget-object p0, p0, Lorg/a/a/a;->a:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/f;

    .line 27
    invoke-interface {v0, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-interface {p2, v0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    move-result-object p0

    const-string v1, " "

    invoke-interface {p0, v1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 29
    invoke-interface {v0, p1, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 3

    .line 38
    iget-object p0, p0, Lorg/a/a/a;->a:Ljava/lang/Iterable;

    const-string v0, "("

    const-string v1, " and "

    const-string v2, ")"

    invoke-interface {p1, v0, v1, v2, p0}, Lorg/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/a/d;

    return-void
.end method
