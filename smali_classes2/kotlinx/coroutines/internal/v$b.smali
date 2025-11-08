.class final Lkotlinx/coroutines/internal/v$b;
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
        "Lkotlinx/coroutines/bl<",
        "*>;",
        "Lc/c/g$b;",
        "Lkotlinx/coroutines/bl<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/v$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/v$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/v$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/v$b;->INSTANCE:Lkotlinx/coroutines/internal/v$b;

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

    check-cast p1, Lkotlinx/coroutines/bl;

    check-cast p2, Lc/c/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/v$b;->invoke(Lkotlinx/coroutines/bl;Lc/c/g$b;)Lkotlinx/coroutines/bl;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/bl;Lc/c/g$b;)Lkotlinx/coroutines/bl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/bl<",
            "*>;",
            "Lc/c/g$b;",
            ")",
            "Lkotlinx/coroutines/bl<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 38
    :cond_0
    instance-of p0, p2, Lkotlinx/coroutines/bl;

    if-nez p0, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lkotlinx/coroutines/bl;

    return-object p2
.end method
