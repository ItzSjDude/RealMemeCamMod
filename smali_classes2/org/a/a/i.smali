.class public Lorg/a/a/i;
.super Lorg/a/b;
.source "IsNull.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    return-void
.end method

.method public static a()Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/a/a/i;

    invoke-direct {v0}, Lorg/a/a/i;-><init>()V

    return-object v0
.end method

.method public static b()Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/f;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/h;->a(Lorg/a/f;)Lorg/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/a/d;)V
    .locals 0

    const-string p0, "null"

    .line 22
    invoke-interface {p1, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
