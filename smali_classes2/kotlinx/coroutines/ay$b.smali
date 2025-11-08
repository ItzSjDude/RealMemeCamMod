.class public final Lkotlinx/coroutines/ay$b;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lc/c/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/g$c<",
        "Lkotlinx/coroutines/ay;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Lkotlinx/coroutines/ay$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lkotlinx/coroutines/ay$b;

    invoke-direct {v0}, Lkotlinx/coroutines/ay$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ay$b;->a:Lkotlinx/coroutines/ay$b;

    .line 123
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
