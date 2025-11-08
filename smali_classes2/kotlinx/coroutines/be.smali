.class final Lkotlinx/coroutines/be;
.super Lkotlinx/coroutines/bk;
.source "Builders.common.kt"


# instance fields
.field private final c:Lc/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/d<",
            "Lc/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/g;Lc/f/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g;",
            "Lc/f/a/m<",
            "-",
            "Lkotlinx/coroutines/y;",
            "-",
            "Lc/c/d<",
            "-",
            "Lc/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/bk;-><init>(Lc/c/g;Z)V

    .line 198
    move-object p1, p0

    check-cast p1, Lc/c/d;

    invoke-static {p2, p0, p1}, Lc/c/a/b;->a(Lc/f/a/m;Ljava/lang/Object;Lc/c/d;)Lc/c/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/be;->c:Lc/c/d;

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 1

    .line 201
    iget-object v0, p0, Lkotlinx/coroutines/be;->c:Lc/c/d;

    check-cast p0, Lc/c/d;

    invoke-static {v0, p0}, Lkotlinx/coroutines/a/a;->a(Lc/c/d;Lc/c/d;)V

    return-void
.end method
