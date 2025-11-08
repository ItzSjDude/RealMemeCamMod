.class Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;
.super Lorg/junit/experimental/theories/PotentialAssignment;
.source "AllMembersSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/theories/internal/AllMembersSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodParameterValue"
.end annotation


# instance fields
.field private final method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method private constructor <init>(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/junit/experimental/theories/PotentialAssignment;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/AllMembersSupplier$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;-><init>(Lorg/junit/runners/model/FrameworkMethod;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    :try_start_0
    iget-object v1, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 42
    iget-object p0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    const-class v2, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {p0, v2}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/junit/experimental/theories/DataPoint;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Lorg/junit/experimental/theories/DataPoint;->ignoredExceptions()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->access$000([Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lorg/junit/Assume;->assumeTrue(Z)V

    .line 45
    new-instance p0, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;

    invoke-direct {p0, v1}, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 39
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unexpected: getMethods returned an inaccessible method"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unexpected: argument length is checked"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
