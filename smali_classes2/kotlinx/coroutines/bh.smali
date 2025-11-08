.class public final Lkotlinx/coroutines/bh;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/ak;
.implements Lkotlinx/coroutines/h;


# static fields
.field public static final a:Lkotlinx/coroutines/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 653
    new-instance v0, Lkotlinx/coroutines/bh;

    invoke-direct {v0}, Lkotlinx/coroutines/bh;-><init>()V

    sput-object v0, Lkotlinx/coroutines/bh;->a:Lkotlinx/coroutines/bh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
