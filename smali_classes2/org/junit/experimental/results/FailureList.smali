.class Lorg/junit/experimental/results/FailureList;
.super Ljava/lang/Object;
.source "FailureList.java"


# instance fields
.field private final failures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/junit/experimental/results/FailureList;->failures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public result()Lorg/junit/runner/Result;
    .locals 3

    .line 17
    new-instance v0, Lorg/junit/runner/Result;

    invoke-direct {v0}, Lorg/junit/runner/Result;-><init>()V

    .line 18
    invoke-virtual {v0}, Lorg/junit/runner/Result;->createListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v1

    .line 19
    iget-object p0, p0, Lorg/junit/experimental/results/FailureList;->failures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/notification/Failure;

    .line 21
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/junit/runner/notification/RunListener;->testFailure(Lorg/junit/runner/notification/Failure;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "I can\'t believe this happened"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object v0
.end method
