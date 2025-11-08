.class final Lkotlinx/coroutines/internal/v$c;
.super Lc/f/b/i;
.source "ThreadContext.kt"

# interfaces
.implements Lc/f/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/f/b/i;",
        "Lc/f/a/m<",
        "Lkotlinx/coroutines/internal/y;",
        "Lc/c/g$b;",
        "Lkotlinx/coroutines/internal/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/v$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/v$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/v$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/v$c;->INSTANCE:Lkotlinx/coroutines/internal/v$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/f/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/y;

    check-cast p2, Lc/c/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/v$c;->invoke(Lkotlinx/coroutines/internal/y;Lc/c/g$b;)Lkotlinx/coroutines/internal/y;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/internal/y;Lc/c/g$b;)Lkotlinx/coroutines/internal/y;
    .locals 1

    .line 54
    instance-of p0, p2, Lkotlinx/coroutines/bl;

    if-eqz p0, :cond_0

    .line 55
    check-cast p2, Lkotlinx/coroutines/bl;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/y;->c()Lc/c/g;

    move-result-object p0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/y;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lkotlinx/coroutines/bl;->a(Lc/c/g;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
