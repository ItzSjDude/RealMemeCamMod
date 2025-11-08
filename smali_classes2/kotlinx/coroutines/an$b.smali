.class public final Lkotlinx/coroutines/an$b;
.super Lkotlinx/coroutines/internal/w;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/w<",
        "Lkotlinx/coroutines/an$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 518
    invoke-direct {p0}, Lkotlinx/coroutines/internal/w;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/an$b;->a:J

    return-void
.end method
