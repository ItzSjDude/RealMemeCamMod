.class public final Lkotlinx/coroutines/b/c;
.super Lkotlinx/coroutines/b/d;
.source "Dispatcher.kt"


# static fields
.field public static final b:Lkotlinx/coroutines/b/c;

.field private static final e:Lkotlinx/coroutines/t;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lkotlinx/coroutines/b/c;

    invoke-direct {v0}, Lkotlinx/coroutines/b/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    .line 17
    new-instance v1, Lkotlinx/coroutines/b/f;

    .line 18
    check-cast v0, Lkotlinx/coroutines/b/d;

    .line 19
    invoke-static {}, Lkotlinx/coroutines/internal/s;->a()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v3, v2}, Lc/h/d;->b(II)I

    move-result v5

    const-string v4, "kotlinx.coroutines.io.parallelism"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v2

    const-string v3, "Dispatchers.IO"

    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v0, v2, v3, v4}, Lkotlinx/coroutines/b/f;-><init>(Lkotlinx/coroutines/b/d;ILjava/lang/String;I)V

    check-cast v1, Lkotlinx/coroutines/t;

    sput-object v1, Lkotlinx/coroutines/b/c;->e:Lkotlinx/coroutines/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/b/d;-><init>(IILjava/lang/String;ILc/f/b/f;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/t;
    .locals 0

    .line 17
    sget-object p0, Lkotlinx/coroutines/b/c;->e:Lkotlinx/coroutines/t;

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
