.class public final Lkotlinx/coroutines/bm;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/bm;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lkotlinx/coroutines/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lkotlinx/coroutines/bm;

    invoke-direct {v0}, Lkotlinx/coroutines/bm;-><init>()V

    sput-object v0, Lkotlinx/coroutines/bm;->a:Lkotlinx/coroutines/bm;

    .line 123
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkotlinx/coroutines/bm;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/am;
    .locals 1

    .line 126
    sget-object p0, Lkotlinx/coroutines/bm;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/am;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/ap;->a()Lkotlinx/coroutines/am;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/bm;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final a(Lkotlinx/coroutines/am;)V
    .locals 0

    .line 136
    sget-object p0, Lkotlinx/coroutines/bm;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 132
    sget-object p0, Lkotlinx/coroutines/bm;->b:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
