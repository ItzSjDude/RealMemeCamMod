.class public final Lkotlinx/coroutines/aq;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/r;

.field private static final b:Lkotlinx/coroutines/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/aq;->a:Lkotlinx/coroutines/internal/r;

    .line 167
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/aq;->b:Lkotlinx/coroutines/internal/r;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/aq;->a:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/r;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/aq;->b:Lkotlinx/coroutines/internal/r;

    return-object v0
.end method
