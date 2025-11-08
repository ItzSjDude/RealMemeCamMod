.class public final Lkotlinx/coroutines/bc$c;
.super Lkotlinx/coroutines/internal/i$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/bc;->a(Ljava/lang/Object;Lkotlinx/coroutines/bg;Lkotlinx/coroutines/bb;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/internal/i;

.field final synthetic b:Lkotlinx/coroutines/bc;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/internal/i;Lkotlinx/coroutines/bc;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/bc$c;->a:Lkotlinx/coroutines/internal/i;

    iput-object p3, p0, Lkotlinx/coroutines/bc$c;->b:Lkotlinx/coroutines/bc;

    iput-object p4, p0, Lkotlinx/coroutines/bc$c;->c:Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/i$a;-><init>(Lkotlinx/coroutines/internal/i;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Lkotlinx/coroutines/internal/i;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bc$c;->a(Lkotlinx/coroutines/internal/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lkotlinx/coroutines/internal/i;)Ljava/lang/Object;
    .locals 0

    .line 659
    iget-object p1, p0, Lkotlinx/coroutines/bc$c;->b:Lkotlinx/coroutines/bc;

    invoke-virtual {p1}, Lkotlinx/coroutines/bc;->k()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/bc$c;->c:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/h;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
