.class public abstract Lorg/a/a/k;
.super Lorg/a/k;
.source "SubstringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/a/k<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/a/k;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/a/a/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Lorg/a/d;)V
    .locals 0

    const-string p0, "was \""

    .line 23
    invoke-interface {p2, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p0

    const-string p1, "\""

    invoke-interface {p0, p1}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/a/a/k;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/a/a/k;->a(Ljava/lang/String;Lorg/a/d;)V

    return-void
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "a string "

    .line 28
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    invoke-virtual {p0}, Lorg/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    const-string v0, " "

    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/k;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Ljava/lang/Object;)Lorg/a/d;

    return-void
.end method

.method public synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/a/a/k;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
