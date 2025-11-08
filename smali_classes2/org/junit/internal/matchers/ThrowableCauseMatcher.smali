.class public Lorg/junit/internal/matchers/ThrowableCauseMatcher;
.super Lorg/a/k;
.source "ThrowableCauseMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Lorg/a/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final causeMatcher:Lorg/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/f<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
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
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/a/k;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->causeMatcher:Lorg/a/f;

    return-void
.end method

.method public static hasCause(Lorg/a/f;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/a/f<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/junit/internal/matchers/ThrowableCauseMatcher;

    invoke-direct {v0, p0}, Lorg/junit/internal/matchers/ThrowableCauseMatcher;-><init>(Lorg/a/f;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->describeMismatchSafely(Ljava/lang/Throwable;Lorg/a/d;)V

    return-void
.end method

.method protected describeMismatchSafely(Ljava/lang/Throwable;Lorg/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/a/d;",
            ")V"
        }
    .end annotation

    const-string v0, "cause "

    .line 35
    invoke-interface {p2, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 36
    iget-object p0, p0, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->causeMatcher:Lorg/a/f;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    return-void
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 1

    const-string v0, "exception with cause "

    .line 24
    invoke-interface {p1, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 25
    iget-object p0, p0, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->causeMatcher:Lorg/a/f;

    invoke-interface {p1, p0}, Lorg/a/d;->a(Lorg/a/h;)Lorg/a/d;

    return-void
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->matchesSafely(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method protected matchesSafely(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lorg/junit/internal/matchers/ThrowableCauseMatcher;->causeMatcher:Lorg/a/f;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
