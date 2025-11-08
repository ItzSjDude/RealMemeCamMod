.class public final Lkotlinx/coroutines/t$a;
.super Lc/c/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b<",
        "Lc/c/e;",
        "Lkotlinx/coroutines/t;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    sget-object v0, Lc/c/e;->a:Lc/c/e$b;

    check-cast v0, Lc/c/g$c;

    .line 37
    sget-object v1, Lkotlinx/coroutines/t$a$1;->INSTANCE:Lkotlinx/coroutines/t$a$1;

    check-cast v1, Lc/f/a/b;

    .line 35
    invoke-direct {p0, v0, v1}, Lc/c/b;-><init>(Lc/c/g$c;Lc/f/a/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/f/b/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lkotlinx/coroutines/t$a;-><init>()V

    return-void
.end method
