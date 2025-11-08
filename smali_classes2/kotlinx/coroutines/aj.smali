.class public final Lkotlinx/coroutines/aj;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/aj;

.field private static final b:Lkotlinx/coroutines/t;

.field private static final c:Lkotlinx/coroutines/t;

.field private static final d:Lkotlinx/coroutines/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lkotlinx/coroutines/aj;

    invoke-direct {v0}, Lkotlinx/coroutines/aj;-><init>()V

    sput-object v0, Lkotlinx/coroutines/aj;->a:Lkotlinx/coroutines/aj;

    .line 33
    invoke-static {}, Lkotlinx/coroutines/s;->a()Lkotlinx/coroutines/t;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/aj;->b:Lkotlinx/coroutines/t;

    .line 94
    sget-object v0, Lkotlinx/coroutines/bq;->b:Lkotlinx/coroutines/bq;

    check-cast v0, Lkotlinx/coroutines/t;

    sput-object v0, Lkotlinx/coroutines/aj;->c:Lkotlinx/coroutines/t;

    .line 114
    sget-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/c;->a()Lkotlinx/coroutines/t;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/aj;->d:Lkotlinx/coroutines/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/t;
    .locals 1

    .line 33
    sget-object v0, Lkotlinx/coroutines/aj;->b:Lkotlinx/coroutines/t;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/bf;
    .locals 1

    .line 58
    sget-object v0, Lkotlinx/coroutines/internal/l;->a:Lkotlinx/coroutines/bf;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/t;
    .locals 1

    .line 114
    sget-object v0, Lkotlinx/coroutines/aj;->d:Lkotlinx/coroutines/t;

    return-object v0
.end method
