.class public Lorg/junit/matchers/JUnitMatchers;
.super Ljava/lang/Object;
.source "JUnitMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static both(Lorg/a/f;)Lorg/a/a/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "-TT;>;)",
            "Lorg/a/a/b$a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-static {p0}, Lorg/a/c;->a(Lorg/a/f;)Lorg/a/a/b$a;

    move-result-object p0

    return-object p0
.end method

.method public static containsString(Ljava/lang/String;)Lorg/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/a/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lorg/a/c;->a(Ljava/lang/String;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static either(Lorg/a/f;)Lorg/a/a/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "-TT;>;)",
            "Lorg/a/a/b$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-static {p0}, Lorg/a/c;->b(Lorg/a/f;)Lorg/a/a/b$b;

    move-result-object p0

    return-object p0
.end method

.method public static everyItem(Lorg/a/f;)Lorg/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/f<",
            "TT;>;)",
            "Lorg/a/f<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-static {p0}, Lorg/a/c;->c(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static hasItem(Ljava/lang/Object;)Lorg/a/f;
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-static {p0}, Lorg/a/c;->b(Ljava/lang/Object;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static hasItem(Lorg/a/f;)Lorg/a/f;
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    invoke-static {p0}, Lorg/a/c;->d(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs hasItems([Ljava/lang/Object;)Lorg/a/f;
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {p0}, Lorg/a/c;->a([Ljava/lang/Object;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static varargs hasItems([Lorg/a/f;)Lorg/a/f;
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-static {p0}, Lorg/a/c;->a([Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static isException(Lorg/a/f;)Lorg/a/f;
    .locals 0
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

    .line 111
    invoke-static {p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->isException(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static isThrowable(Lorg/a/f;)Lorg/a/f;
    .locals 0
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

    .line 103
    invoke-static {p0}, Lorg/junit/internal/matchers/StacktracePrintingMatcher;->isThrowable(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method
