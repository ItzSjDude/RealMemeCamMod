.class public final Lkotlinx/coroutines/as;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"

# interfaces
.implements Lkotlinx/coroutines/y;


# static fields
.field public static final a:Lkotlinx/coroutines/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lkotlinx/coroutines/as;

    invoke-direct {v0}, Lkotlinx/coroutines/as;-><init>()V

    sput-object v0, Lkotlinx/coroutines/as;->a:Lkotlinx/coroutines/as;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/c/g;
    .locals 0

    .line 151
    sget-object p0, Lc/c/h;->INSTANCE:Lc/c/h;

    check-cast p0, Lc/c/g;

    return-object p0
.end method
