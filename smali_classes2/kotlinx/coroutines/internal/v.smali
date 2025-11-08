.class public final Lkotlinx/coroutines/internal/v;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/r;

.field private static final b:Lc/f/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/m<",
            "Ljava/lang/Object;",
            "Lc/c/g$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lc/f/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/m<",
            "Lkotlinx/coroutines/bl<",
            "*>;",
            "Lc/c/g$b;",
            "Lkotlinx/coroutines/bl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lc/f/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/m<",
            "Lkotlinx/coroutines/internal/y;",
            "Lc/c/g$b;",
            "Lkotlinx/coroutines/internal/y;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lc/f/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/f/a/m<",
            "Lkotlinx/coroutines/internal/y;",
            "Lc/c/g$b;",
            "Lkotlinx/coroutines/internal/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/r;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/r;

    .line 26
    sget-object v0, Lkotlinx/coroutines/internal/v$a;->INSTANCE:Lkotlinx/coroutines/internal/v$a;

    check-cast v0, Lc/f/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/v;->b:Lc/f/a/m;

    .line 36
    sget-object v0, Lkotlinx/coroutines/internal/v$b;->INSTANCE:Lkotlinx/coroutines/internal/v$b;

    check-cast v0, Lc/f/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/v;->c:Lc/f/a/m;

    .line 43
    sget-object v0, Lkotlinx/coroutines/internal/v$d;->INSTANCE:Lkotlinx/coroutines/internal/v$d;

    check-cast v0, Lc/f/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/v;->d:Lc/f/a/m;

    .line 52
    sget-object v0, Lkotlinx/coroutines/internal/v$c;->INSTANCE:Lkotlinx/coroutines/internal/v$c;

    check-cast v0, Lc/f/a/m;

    sput-object v0, Lkotlinx/coroutines/internal/v;->e:Lc/f/a/m;

    return-void
.end method

.method public static final a(Lc/c/g;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/v;->b:Lc/f/a/m;

    invoke-interface {p0, v0, v1}, Lc/c/g;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/f/b/h;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final a(Lc/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/v;->a(Lc/c/g;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/r;

    goto :goto_1

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lkotlinx/coroutines/internal/y;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/y;-><init>(Lc/c/g;I)V

    sget-object p1, Lkotlinx/coroutines/internal/v;->d:Lc/f/a/m;

    invoke-interface {p0, v0, p1}, Lc/c/g;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 77
    check-cast p1, Lkotlinx/coroutines/bl;

    .line 78
    invoke-interface {p1, p0}, Lkotlinx/coroutines/bl;->b(Lc/c/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lc/c/g;Ljava/lang/Object;)V
    .locals 2

    .line 85
    sget-object v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/r;

    if-ne p1, v0, :cond_0

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/y;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/y;->b()V

    .line 89
    sget-object v0, Lkotlinx/coroutines/internal/v;->e:Lc/f/a/m;

    invoke-interface {p0, p1, v0}, Lc/c/g;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lkotlinx/coroutines/internal/v;->c:Lc/f/a/m;

    invoke-interface {p0, v0, v1}, Lc/c/g;->fold(Ljava/lang/Object;Lc/f/a/m;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/bl;

    .line 95
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/bl;->a(Lc/c/g;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
