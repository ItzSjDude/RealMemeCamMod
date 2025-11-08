.class public abstract Lkotlinx/coroutines/bb;
.super Lkotlinx/coroutines/p;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/ak;
.implements Lkotlinx/coroutines/au;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/ay;",
        ">",
        "Lkotlinx/coroutines/p;",
        "Lkotlinx/coroutines/ak;",
        "Lkotlinx/coroutines/au;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1349
    invoke-direct {p0}, Lkotlinx/coroutines/p;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/bb;->b:Lkotlinx/coroutines/ay;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1352
    iget-object v0, p0, Lkotlinx/coroutines/bb;->b:Lkotlinx/coroutines/ay;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/bc;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/bc;->a(Lkotlinx/coroutines/bb;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k_()Lkotlinx/coroutines/bg;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
