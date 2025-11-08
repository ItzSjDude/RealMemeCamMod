.class Lkotlinx/coroutines/bk;
.super Lkotlinx/coroutines/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/a<",
        "Lc/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/c/g;Z)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lc/c/g;Z)V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Throwable;)Z
    .locals 0

    .line 189
    invoke-virtual {p0}, Lkotlinx/coroutines/bk;->getContext()Lc/c/g;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/coroutines/v;->a(Lc/c/g;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
