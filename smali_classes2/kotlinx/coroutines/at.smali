.class public final Lkotlinx/coroutines/at;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/au;


# instance fields
.field private final a:Lkotlinx/coroutines/bg;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bg;)V
    .locals 0

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/at;->a:Lkotlinx/coroutines/bg;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k_()Lkotlinx/coroutines/bg;
    .locals 0

    .line 1376
    iget-object p0, p0, Lkotlinx/coroutines/at;->a:Lkotlinx/coroutines/bg;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1379
    invoke-static {}, Lkotlinx/coroutines/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/at;->k_()Lkotlinx/coroutines/bg;

    move-result-object p0

    const-string v0, "New"

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/bg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
