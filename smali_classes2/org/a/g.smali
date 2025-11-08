.class public Lorg/a/g;
.super Ljava/lang/Object;
.source "MatcherAssert.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Object;Lorg/a/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/a/f<",
            "-TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p2, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Lorg/a/i;

    invoke-direct {v0}, Lorg/a/i;-><init>()V

    .line 14
    invoke-interface {v0, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    const-string v1, "\nExpected: "

    invoke-interface {p0, v1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    move-result-object p0

    const-string v1, "\n     but: "

    invoke-interface {p0, v1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 18
    invoke-interface {p2, p1, v0}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    .line 20
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
