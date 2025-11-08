.class public interface abstract Lkotlinx/coroutines/ay;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lc/c/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/ay$a;,
        Lkotlinx/coroutines/ay$b;
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/ay$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/ay$b;->a:Lkotlinx/coroutines/ay$b;

    sput-object v0, Lkotlinx/coroutines/ay;->b:Lkotlinx/coroutines/ay$b;

    return-void
.end method


# virtual methods
.method public abstract a(ZZLc/f/a/b;)Lkotlinx/coroutines/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lc/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lc/s;",
            ">;)",
            "Lkotlinx/coroutines/ak;"
        }
    .end annotation
.end method

.method public abstract a(Lkotlinx/coroutines/j;)Lkotlinx/coroutines/h;
.end method

.method public abstract b()Z
.end method

.method public abstract h()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract i()Z
.end method
