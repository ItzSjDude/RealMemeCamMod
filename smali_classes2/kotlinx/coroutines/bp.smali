.class public final Lkotlinx/coroutines/bp;
.super Ljava/util/concurrent/CancellationException;
.source "Timeout.kt"

# interfaces
.implements Lkotlinx/coroutines/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/r<",
        "Lkotlinx/coroutines/bp;",
        ">;"
    }
.end annotation


# instance fields
.field public final coroutine:Lkotlinx/coroutines/ay;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/bp;-><init>(Ljava/lang/String;Lkotlinx/coroutines/ay;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/ay;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lkotlinx/coroutines/bp;->coroutine:Lkotlinx/coroutines/ay;

    return-void
.end method


# virtual methods
.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 0

    .line 138
    invoke-virtual {p0}, Lkotlinx/coroutines/bp;->createCopy()Lkotlinx/coroutines/bp;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public createCopy()Lkotlinx/coroutines/bp;
    .locals 3

    .line 151
    new-instance v0, Lkotlinx/coroutines/bp;

    invoke-virtual {p0}, Lkotlinx/coroutines/bp;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/bp;->coroutine:Lkotlinx/coroutines/ay;

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/bp;-><init>(Ljava/lang/String;Lkotlinx/coroutines/ay;)V

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/bp;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method
