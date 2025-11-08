.class public Lorg/a/a/d;
.super Lorg/a/b;
.source "Is.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/f<",
            "TT;>;"
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
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/a/a/d;->a:Lorg/a/f;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lorg/a/a/f;->a(Ljava/lang/Object;)Lorg/a/f;

    move-result-object p0

    invoke-static {p0}, Lorg/a/a/d;->a(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/a/f;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "TT;>;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/a/a/d;

    invoke-direct {v0, p0}, Lorg/a/a/d;-><init>(Lorg/a/f;)V

    return-object v0
.end method


# virtual methods
.method public describeMismatch(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/a/a/d;->a:Lorg/a/f;

    invoke-interface {p0, p1, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    return-void
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "is "

    .line 32
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/d;->a:Lorg/a/f;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/a/a/d;->a:Lorg/a/f;

    invoke-interface {p0, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
