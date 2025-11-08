.class Lorg/junit/rules/ExpectedExceptionMatcherBuilder;
.super Ljava/lang/Object;
.source "ExpectedExceptionMatcherBuilder.java"


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/a/f<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    return-void
.end method

.method private allOfTheMatchers()Lorg/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/a/f<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/f;

    invoke-direct {p0, v0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->cast(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    invoke-direct {p0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->castedMatchers()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/a/c;->a(Ljava/lang/Iterable;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method private cast(Lorg/a/f;)Lorg/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/f<",
            "*>;)",
            "Lorg/a/f<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private castedMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/a/f<",
            "-",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method add(Lorg/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/f<",
            "*>;)V"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method build()Lorg/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/a/f<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->allOfTheMatchers()Lorg/a/f;

    move-result-object p0

    invoke-static {p0}, Lorg/junit/matchers/JUnitMatchers;->isThrowable(Lorg/a/f;)Lorg/a/f;

    move-result-object p0

    return-object p0
.end method

.method expectsThrowable()Z
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/junit/rules/ExpectedExceptionMatcherBuilder;->matchers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
