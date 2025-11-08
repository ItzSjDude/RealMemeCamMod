.class public Lorg/junit/internal/runners/ErrorReportingRunner;
.super Lorg/junit/runner/Runner;
.source "ErrorReportingRunner.java"


# instance fields
.field private final causes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final testClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->testClass:Ljava/lang/Class;

    .line 23
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/ErrorReportingRunner;->getCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->causes:Ljava/util/List;

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Test class cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private describeCause(Ljava/lang/Throwable;)Lorg/junit/runner/Description;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->testClass:Ljava/lang/Class;

    const-string p1, "initializationError"

    invoke-static {p0, p1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object p0

    return-object p0
.end method

.method private getCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 44
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->getCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    instance-of p0, p1, Lorg/junit/runners/model/InitializationError;

    if-eqz p0, :cond_1

    .line 48
    check-cast p1, Lorg/junit/runners/model/InitializationError;

    invoke-virtual {p1}, Lorg/junit/runners/model/InitializationError;->getCauses()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    instance-of p0, p1, Lorg/junit/internal/runners/InitializationError;

    if-eqz p0, :cond_2

    .line 51
    check-cast p1, Lorg/junit/internal/runners/InitializationError;

    invoke-virtual {p1}, Lorg/junit/internal/runners/InitializationError;->getCauses()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x1

    .line 54
    new-array p0, p0, [Ljava/lang/Throwable;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private runCause(Ljava/lang/Throwable;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->describeCause(Ljava/lang/Throwable;)Lorg/junit/runner/Description;

    move-result-object p0

    .line 64
    invoke-virtual {p2, p0}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 65
    new-instance v0, Lorg/junit/runner/notification/Failure;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 66
    invoke-virtual {p2, p0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .locals 3

    .line 28
    iget-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->testClass:Ljava/lang/Class;

    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->causes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 30
    invoke-direct {p0, v2}, Lorg/junit/internal/runners/ErrorReportingRunner;->describeCause(Ljava/lang/Throwable;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/junit/internal/runners/ErrorReportingRunner;->causes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, v1, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;->runCause(Ljava/lang/Throwable;Lorg/junit/runner/notification/RunNotifier;)V

    goto :goto_0

    :cond_0
    return-void
.end method
