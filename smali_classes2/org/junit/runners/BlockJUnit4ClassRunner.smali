.class public Lorg/junit/runners/BlockJUnit4ClassRunner;
.super Lorg/junit/runners/ParentRunner;
.source "BlockJUnit4ClassRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runners/ParentRunner<",
        "Lorg/junit/runners/model/FrameworkMethod;",
        ">;"
    }
.end annotation


# instance fields
.field private final methodDescriptions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/junit/runners/ParentRunner;-><init>(Ljava/lang/Class;)V

    .line 58
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private expectsException(Lorg/junit/Test;)Z
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getExpectedException(Lorg/junit/Test;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getExpectedException(Lorg/junit/Test;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/Test;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 420
    invoke-interface {p1}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lorg/junit/Test$None;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-interface {p1}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMethodRules(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/rules/MethodRule;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->rules(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getTimeout(Lorg/junit/Test;)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 435
    :cond_0
    invoke-interface {p1}, Lorg/junit/Test;->timeout()J

    move-result-wide p0

    return-wide p0
.end method

.method private hasOneConstructor()Z
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private validateMethods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 200
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    return-void
.end method

.method private withMethodRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/junit/runners/model/Statement;",
            ")",
            "Lorg/junit/runners/model/Statement;"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p3}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getMethodRules(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/rules/MethodRule;

    .line 364
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-interface {v0, p4, p1, p3}, Lorg/junit/rules/MethodRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object p4

    goto :goto_0

    :cond_1
    return-object p4
.end method

.method private withRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 1

    .line 353
    invoke-virtual {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestRules(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withMethodRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p2

    .line 356
    invoke-direct {p0, p1, v0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withTestRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p0

    return-object p0
.end method

.method private withTestRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;",
            "Lorg/junit/runners/model/Statement;",
            ")",
            "Lorg/junit/runners/model/Statement;"
        }
    .end annotation

    .line 400
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/junit/rules/RunRules;

    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;

    move-result-object p0

    invoke-direct {v0, p3, p2, p0}, Lorg/junit/rules/RunRules;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method


# virtual methods
.method protected collectInitializationErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lorg/junit/runners/ParentRunner;->collectInitializationErrors(Ljava/util/List;)V

    .line 126
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateNoNonStaticInnerClass(Ljava/util/List;)V

    .line 127
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateConstructor(Ljava/util/List;)V

    .line 128
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateInstanceMethods(Ljava/util/List;)V

    .line 129
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateFields(Ljava/util/List;)V

    .line 130
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateMethods(Ljava/util/List;)V

    return-void
.end method

.method protected computeTestMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    const-class v0, Lorg/junit/Test;

    invoke-virtual {p0, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected createTest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .locals 0

    .line 57
    check-cast p1, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;

    move-result-object p0

    return-object p0
.end method

.method protected describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 98
    iget-object p0, p0, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodDescriptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->computeTestMethods()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTestRules(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/rules/TestRule;",
            ">;"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/Rule;

    const-class v2, Lorg/junit/rules/TestRule;

    invoke-virtual {v0, p1, v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    const-class v1, Lorg/junit/Rule;

    const-class v2, Lorg/junit/rules/TestRule;

    invoke-virtual {p0, p1, v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected bridge synthetic isIgnored(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    check-cast p1, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->isIgnored(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result p0

    return p0
.end method

.method protected isIgnored(Lorg/junit/runners/model/FrameworkMethod;)Z
    .locals 0

    .line 88
    const-class p0, Lorg/junit/Ignore;

    invoke-virtual {p1, p0}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
    .locals 2

    .line 263
    :try_start_0
    new-instance v0, Lorg/junit/runners/BlockJUnit4ClassRunner$1;

    invoke-direct {v0, p0}, Lorg/junit/runners/BlockJUnit4ClassRunner$1;-><init>(Lorg/junit/runners/BlockJUnit4ClassRunner;)V

    invoke-virtual {v0}, Lorg/junit/runners/BlockJUnit4ClassRunner$1;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    invoke-virtual {p0, p1, v0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 274
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->possiblyExpectingExceptions(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 275
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withPotentialTimeout(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 276
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 277
    invoke-virtual {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withAfters(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    .line 278
    invoke-direct {p0, p1, v0, v1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->withRules(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 270
    new-instance p1, Lorg/junit/internal/runners/statements/Fail;

    invoke-direct {p1, p0}, Lorg/junit/internal/runners/statements/Fail;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method protected methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 290
    new-instance p0, Lorg/junit/internal/runners/statements/InvokeMethod;

    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/statements/InvokeMethod;-><init>(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected possiblyExpectingExceptions(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 301
    const-class p2, Lorg/junit/Test;

    invoke-virtual {p1, p2}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/junit/Test;

    .line 302
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->expectsException(Lorg/junit/Test;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/junit/internal/runners/statements/ExpectException;

    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getExpectedException(Lorg/junit/Test;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lorg/junit/internal/runners/statements/ExpectException;-><init>(Lorg/junit/runners/model/Statement;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    return-object p2
.end method

.method protected rules(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/rules/MethodRule;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/Rule;

    const-class v2, Lorg/junit/rules/MethodRule;

    invoke-virtual {v0, p1, v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    const-class v1, Lorg/junit/Rule;

    const-class v2, Lorg/junit/rules/MethodRule;

    invoke-virtual {p0, p1, v1, v2}, Lorg/junit/runners/model/TestClass;->getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected bridge synthetic runChild(Ljava/lang/Object;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0

    .line 57
    check-cast p1, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, p1, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->runChild(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method protected runChild(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2

    .line 74
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->describeChild(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 75
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->isIgnored(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->runLeaf(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;Lorg/junit/runner/notification/RunNotifier;)V

    :goto_0
    return-void
.end method

.method protected testName(Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/String;
    .locals 0

    .line 225
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected validateConstructor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateOnlyOneConstructor(Ljava/util/List;)V

    .line 148
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateZeroArgConstructor(Ljava/util/List;)V

    return-void
.end method

.method protected validateFields(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    return-void
.end method

.method protected validateInstanceMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    const-class v0, Lorg/junit/After;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 187
    const-class v0, Lorg/junit/Before;

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    .line 188
    invoke-virtual {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validateTestMethods(Ljava/util/List;)V

    .line 190
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->computeTestMethods()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    .line 191
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "No runnable methods"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected validateNoNonStaticInnerClass(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->isANonStaticInnerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The inner class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not static."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected validateOnlyOneConstructor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->hasOneConstructor()Z

    move-result p0

    if-nez p0, :cond_0

    .line 158
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Test class should have exactly one public constructor"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected validateTestMethods(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 208
    const-class v0, Lorg/junit/Test;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->validatePublicVoidNoArgMethods(Ljava/lang/Class;ZLjava/util/List;)V

    return-void
.end method

.method protected validateZeroArgConstructor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/TestClass;->isANonStaticInnerClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->hasOneConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_0

    .line 171
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Test class should have exactly one public zero-argument constructor"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected withAfters(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 345
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    const-class p1, Lorg/junit/After;

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 347
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/junit/internal/runners/statements/RunAfters;

    invoke-direct {p1, p3, p0, p2}, Lorg/junit/internal/runners/statements/RunAfters;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method protected withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 330
    invoke-virtual {p0}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object p0

    const-class p1, Lorg/junit/Before;

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 332
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/junit/internal/runners/statements/RunBefores;

    invoke-direct {p1, p3, p0, p2}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method protected withPotentialTimeout(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    const-class p2, Lorg/junit/Test;

    invoke-virtual {p1, p2}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/junit/Test;

    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->getTimeout(Lorg/junit/Test;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-gtz p2, :cond_0

    return-object p3

    .line 318
    :cond_0
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->build(Lorg/junit/runners/model/Statement;)Lorg/junit/internal/runners/statements/FailOnTimeout;

    move-result-object p0

    return-object p0
.end method
