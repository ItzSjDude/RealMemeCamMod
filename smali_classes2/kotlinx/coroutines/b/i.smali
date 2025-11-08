.class public abstract Lkotlinx/coroutines/b/i;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:J

.field public g:Lkotlinx/coroutines/b/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    sget-object v0, Lkotlinx/coroutines/b/h;->a:Lkotlinx/coroutines/b/h;

    check-cast v0, Lkotlinx/coroutines/b/j;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/b/i;-><init>(JLkotlinx/coroutines/b/j;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/b/j;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/b/i;->f:J

    iput-object p3, p0, Lkotlinx/coroutines/b/i;->g:Lkotlinx/coroutines/b/j;

    return-void
.end method
