.class public abstract Lkotlinx/coroutines/t;
.super Lc/c/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lc/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/t$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlinx/coroutines/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/t$a;-><init>(Lc/f/b/f;)V

    sput-object v0, Lkotlinx/coroutines/t;->c:Lkotlinx/coroutines/t$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lc/c/e;->a:Lc/c/e$b;

    check-cast v0, Lc/c/g$c;

    invoke-direct {p0, v0}, Lc/c/a;-><init>(Lc/c/g$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/d;)Lc/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/d<",
            "-TT;>;)",
            "Lc/c/d<",
            "TT;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lkotlinx/coroutines/af;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/af;-><init>(Lkotlinx/coroutines/t;Lc/c/d;)V

    check-cast v0, Lc/c/d;

    return-object v0
.end method

.method public abstract a(Lc/c/g;Ljava/lang/Runnable;)V
.end method

.method public a(Lc/c/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b(Lc/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/d<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 103
    check-cast p1, Lkotlinx/coroutines/af;

    invoke-virtual {p1}, Lkotlinx/coroutines/af;->a()Lkotlinx/coroutines/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/f;->c()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Lc/c/g$c;)Lc/c/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc/c/g$b;",
            ">(",
            "Lc/c/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lc/c/e$a;->a(Lc/c/e;Lc/c/g$c;)Lc/c/g$b;

    move-result-object p0

    return-object p0
.end method

.method public minusKey(Lc/c/g$c;)Lc/c/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/g$c<",
            "*>;)",
            "Lc/c/g;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lc/c/e$a;->b(Lc/c/e;Lc/c/g$c;)Lc/c/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/ad;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
