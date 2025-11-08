.class public Lorg/a/a/h;
.super Lorg/a/b;
.source "IsNot.java"


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

    .line 19
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/a/a/h;->a:Lorg/a/f;

    return-void
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

    .line 46
    new-instance v0, Lorg/a/a/h;

    invoke-direct {v0, p0}, Lorg/a/a/h;-><init>(Lorg/a/f;)V

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "not "

    .line 30
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/h;->a:Lorg/a/f;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/a/a/h;->a:Lorg/a/f;

    invoke-interface {p0, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
