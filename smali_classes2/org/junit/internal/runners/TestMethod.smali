.class public Lorg/junit/internal/runners/TestMethod;
.super Ljava/lang/Object;
.source "TestMethod.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private testClass:Lorg/junit/internal/runners/TestClass;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/junit/internal/runners/TestClass;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    .line 26
    iput-object p2, p0, Lorg/junit/internal/runners/TestMethod;->testClass:Lorg/junit/internal/runners/TestClass;

    return-void
.end method


# virtual methods
.method expectsException()Z
    .locals 0

    .line 56
    invoke-virtual {p0}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getAfters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lorg/junit/internal/runners/TestMethod;->testClass:Lorg/junit/internal/runners/TestClass;

    const-class v0, Lorg/junit/After;

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getBefores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lorg/junit/internal/runners/TestMethod;->testClass:Lorg/junit/internal/runners/TestClass;

    const-class v0, Lorg/junit/Before;

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getExpectedException()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const-class v0, Lorg/junit/Test;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/Test;

    if-eqz p0, :cond_1

    .line 44
    invoke-interface {p0}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/junit/Test$None;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p0}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTimeout()J
    .locals 2

    .line 34
    iget-object p0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const-class v0, Lorg/junit/Test;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/Test;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 38
    :cond_0
    invoke-interface {p0}, Lorg/junit/Test;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isIgnored()Z
    .locals 1

    .line 30
    iget-object p0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const-class v0, Lorg/junit/Ignore;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUnexpected(Ljava/lang/Throwable;)Z
    .locals 0

    .line 52
    invoke-virtual {p0}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
