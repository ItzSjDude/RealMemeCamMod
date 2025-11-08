.class public final Lkotlinx/coroutines/i;
.super Lkotlinx/coroutines/ba;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/ba<",
        "Lkotlinx/coroutines/bc;",
        ">;",
        "Lkotlinx/coroutines/h;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/j;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bc;Lkotlinx/coroutines/j;)V
    .locals 0

    .line 1472
    check-cast p1, Lkotlinx/coroutines/ay;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/ba;-><init>(Lkotlinx/coroutines/ay;)V

    iput-object p2, p0, Lkotlinx/coroutines/i;->a:Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1474
    iget-object p0, p0, Lkotlinx/coroutines/i;->b:Lkotlinx/coroutines/ay;

    check-cast p0, Lkotlinx/coroutines/bc;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bc;->b(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 1473
    iget-object p1, p0, Lkotlinx/coroutines/i;->a:Lkotlinx/coroutines/j;

    iget-object p0, p0, Lkotlinx/coroutines/i;->b:Lkotlinx/coroutines/ay;

    check-cast p0, Lkotlinx/coroutines/bj;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/j;->a(Lkotlinx/coroutines/bj;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1469
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/i;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lc/s;->a:Lc/s;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/i;->a:Lkotlinx/coroutines/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
