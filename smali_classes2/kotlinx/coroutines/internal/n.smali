.class final Lkotlinx/coroutines/internal/n;
.super Lkotlinx/coroutines/bf;
.source "MainDispatchers.kt"


# instance fields
.field private final b:Ljava/lang/Throwable;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lkotlinx/coroutines/bf;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Throwable;

    iput-object p2, p0, Lkotlinx/coroutines/internal/n;->d:Ljava/lang/String;

    return-void
.end method

.method private final c()Ljava/lang/Void;
    .locals 4

    .line 109
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module with the Main dispatcher had failed to initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/n;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Throwable;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 110
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/m;->a()Ljava/lang/Void;

    new-instance p0, Lc/e;

    invoke-direct {p0}, Lc/e;-><init>()V

    throw p0
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/bf;
    .locals 0

    .line 88
    check-cast p0, Lkotlinx/coroutines/bf;

    return-object p0
.end method

.method public synthetic a(Lc/c/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/n;->b(Lc/c/g;Ljava/lang/Runnable;)Ljava/lang/Void;

    return-void
.end method

.method public a(Lc/c/g;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;->c()Ljava/lang/Void;

    new-instance p0, Lc/e;

    invoke-direct {p0}, Lc/e;-><init>()V

    throw p0
.end method

.method public b(Lc/c/g;Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 0

    .line 103
    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;->c()Ljava/lang/Void;

    new-instance p0, Lc/e;

    invoke-direct {p0}, Lc/e;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatchers.Main[missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/internal/n;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
