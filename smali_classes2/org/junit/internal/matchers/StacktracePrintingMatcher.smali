.class public Lorg/junit/internal/matchers/StacktracePrintingMatcher;
.super Lorg/a/k;
.source "StacktracePrintingMatcher.java"


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
.field private final throwableMatcher:Lorg/a/f;
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
    invoke-direct {p0}, Lorg/a/k;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/a/f;

    return-void
.end method

.method public static isException(Lorg/a/f;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Lorg/a/f<",
            "TT;>;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;

    invoke-direct {v0, p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;-><init>(Lorg/a/f;)V

    return-object v0
.end method

.method public static isThrowable(Lorg/a/f;)Lorg/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/a/f<",
            "TT;>;)",
            "Lorg/a/f<",
            "TT;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;

    invoke-direct {v0, p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;-><init>(Lorg/a/f;)V

    return-object v0
.end method

.method private readStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 40
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 41
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 42
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic describeMismatchSafely(Ljava/lang/Object;Lorg/a/d;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->describeMismatchSafely(Ljava/lang/Throwable;Lorg/a/d;)V

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

    .line 34
    iget-object v0, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/a/f;

    invoke-interface {v0, p1, p2}, Lorg/a/f;->describeMismatch(Ljava/lang/Object;Lorg/a/d;)V

    const-string v0, "\nStacktrace was: "

    .line 35
    invoke-interface {p2, v0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    .line 36
    invoke-direct {p0, p1}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->readStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/a/d;->a(Ljava/lang/String;)Lorg/a/d;

    return-void
.end method

.method public describeTo(Lorg/a/d;)V
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/a/f;

    invoke-interface {p0, p1}, Lorg/a/f;->describeTo(Lorg/a/d;)V

    return-void
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->matchesSafely(Ljava/lang/Throwable;)Z

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

    .line 29
    iget-object p0, p0, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->throwableMatcher:Lorg/a/f;

    invoke-interface {p0, p1}, Lorg/a/f;->matches(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
