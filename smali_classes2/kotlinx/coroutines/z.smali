.class public final enum Lkotlinx/coroutines/z;
.super Ljava/lang/Enum;
.source "CoroutineStart.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/z;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/z;

.field public static final enum ATOMIC:Lkotlinx/coroutines/z;

.field public static final enum DEFAULT:Lkotlinx/coroutines/z;

.field public static final enum LAZY:Lkotlinx/coroutines/z;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/z;

    new-instance v1, Lkotlinx/coroutines/z;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/z;->DEFAULT:Lkotlinx/coroutines/z;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/z;

    const/4 v2, 0x1

    const-string v3, "LAZY"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/z;->LAZY:Lkotlinx/coroutines/z;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/z;

    const/4 v2, 0x2

    const-string v3, "ATOMIC"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/z;->ATOMIC:Lkotlinx/coroutines/z;

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/coroutines/z;

    const/4 v2, 0x3

    const-string v3, "UNDISPATCHED"

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/z;->UNDISPATCHED:Lkotlinx/coroutines/z;

    aput-object v1, v0, v2

    sput-object v0, Lkotlinx/coroutines/z;->$VALUES:[Lkotlinx/coroutines/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic isLazy$annotations()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/z;
    .locals 1

    const-class v0, Lkotlinx/coroutines/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/z;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/z;->$VALUES:[Lkotlinx/coroutines/z;

    invoke-virtual {v0}, [Lkotlinx/coroutines/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/z;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lc/f/a/b;Lc/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/f/a/b<",
            "-",
            "Lc/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lc/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 89
    sget-object v0, Lkotlinx/coroutines/aa;->a:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/z;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p0, Lc/k;

    invoke-direct {p0}, Lc/k;-><init>()V

    throw p0

    .line 92
    :cond_1
    invoke-static {p1, p2}, Lkotlinx/coroutines/a/b;->a(Lc/f/a/b;Lc/c/d;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p1, p2}, Lc/c/f;->a(Lc/f/a/b;Lc/c/d;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {p1, p2}, Lkotlinx/coroutines/a/a;->a(Lc/f/a/b;Lc/c/d;)V

    :goto_0
    return-void
.end method

.method public final invoke(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/f/a/m<",
            "-TR;-",
            "Lc/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lc/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 108
    sget-object v0, Lkotlinx/coroutines/aa;->b:[I

    invoke-virtual {p0}, Lkotlinx/coroutines/z;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance p0, Lc/k;

    invoke-direct {p0}, Lc/k;-><init>()V

    throw p0

    .line 111
    :cond_1
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a/b;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1, p2, p3}, Lc/c/f;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a/a;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)V

    :goto_0
    return-void
.end method

.method public final isLazy()Z
    .locals 1

    .line 121
    check-cast p0, Lkotlinx/coroutines/z;

    sget-object v0, Lkotlinx/coroutines/z;->LAZY:Lkotlinx/coroutines/z;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
