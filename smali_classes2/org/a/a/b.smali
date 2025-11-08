.class public Lorg/a/a/b;
.super Lorg/a/j;
.source "CombinableMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/b$b;,
        Lorg/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/j<",
        "TT;>;"
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
.method public static a(Lorg/a/f;)Lorg/a/a/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "-T",
            "LHS;",
            ">;)",
            "Lorg/a/a/b$a<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/a/a/b$a;

    invoke-direct {v0, p0}, Lorg/a/a/b$a;-><init>(Lorg/a/f;)V

    return-object v0
.end method

.method public static b(Lorg/a/f;)Lorg/a/a/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "-T",
            "LHS;",
            ">;)",
            "Lorg/a/a/b$b<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/a/a/b$b;

    invoke-direct {v0, p0}, Lorg/a/a/b$b;-><init>(Lorg/a/f;)V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/a/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/a/d;",
            ")Z"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/a/a/b;->a:Lorg/a/f;

    invoke-interface {v0, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object p0, p0, Lorg/a/a/b;->a:Lorg/a/f;

    invoke-interface {p0, p1, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/a/a/b;->a:Lorg/a/f;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    return-void
.end method
