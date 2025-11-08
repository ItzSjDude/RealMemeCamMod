.class final Lkotlinx/coroutines/ax;
.super Lkotlinx/coroutines/bb;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/bb<",
        "Lkotlinx/coroutines/ay;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/b<",
            "Ljava/lang/Throwable;",
            "Lc/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ay;Lc/f/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ay;",
            "Lc/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lc/s;",
            ">;)V"
        }
    .end annotation

    .line 1385
    invoke-direct {p0, p1}, Lkotlinx/coroutines/bb;-><init>(Lkotlinx/coroutines/ay;)V

    iput-object p2, p0, Lkotlinx/coroutines/ax;->a:Lc/f/a/b;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 1386
    iget-object p0, p0, Lkotlinx/coroutines/ax;->a:Lc/f/a/b;

    invoke-interface {p0, p1}, Lc/f/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1382
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ax;->b(Ljava/lang/Throwable;)V

    sget-object p0, Lc/s;->a:Lc/s;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvokeOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ad;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
