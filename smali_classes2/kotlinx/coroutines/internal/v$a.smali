.class final Lkotlinx/coroutines/internal/v$a;
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
        "Ljava/lang/Object;",
        "Lc/c/g$b;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/v$a;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/v$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/v$a;->INSTANCE:Lkotlinx/coroutines/internal/v$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/f/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lc/c/g$b;)Ljava/lang/Object;
    .locals 0

    .line 27
    instance-of p0, p2, Lkotlinx/coroutines/bl;

    if-eqz p0, :cond_3

    .line 28
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p1, p0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lc/c/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/v$a;->invoke(Ljava/lang/Object;Lc/c/g$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
