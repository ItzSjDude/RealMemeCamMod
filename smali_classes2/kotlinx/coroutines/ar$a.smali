.class public final Lkotlinx/coroutines/ar$a;
.super Lc/c/b;
.source "Executors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b<",
        "Lkotlinx/coroutines/t;",
        "Lkotlinx/coroutines/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    sget-object v0, Lkotlinx/coroutines/t;->c:Lkotlinx/coroutines/t$a;

    check-cast v0, Lc/c/g$c;

    .line 24
    sget-object v1, Lkotlinx/coroutines/ar$a$1;->INSTANCE:Lkotlinx/coroutines/ar$a$1;

    check-cast v1, Lc/f/a/b;

    .line 22
    invoke-direct {p0, v0, v1}, Lc/c/b;-><init>(Lc/c/g$c;Lc/f/a/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/f/b/f;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/ar$a;-><init>()V

    return-void
.end method
