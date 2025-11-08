.class public final Lkotlinx/coroutines/b;
.super Lkotlinx/coroutines/an;
.source "EventLoop.kt"


# instance fields
.field private final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/an;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Thread;
    .locals 0

    .line 23
    iget-object p0, p0, Lkotlinx/coroutines/b;->b:Ljava/lang/Thread;

    return-object p0
.end method
