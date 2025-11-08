.class Lcom/oplus/anim/f$a;
.super Ljava/util/concurrent/FutureTask;
.source "EffectiveAnimationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/oplus/anim/e<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/anim/f;


# direct methods
.method constructor <init>(Lcom/oplus/anim/f;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/e<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/oplus/anim/f$a;->a:Lcom/oplus/anim/f;

    .line 237
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/oplus/anim/f$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/anim/f$a;->a:Lcom/oplus/anim/f;

    invoke-virtual {p0}, Lcom/oplus/anim/f$a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/e;

    invoke-static {v0, v1}, Lcom/oplus/anim/f;->a(Lcom/oplus/anim/f;Lcom/oplus/anim/e;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 250
    iget-object p0, p0, Lcom/oplus/anim/f$a;->a:Lcom/oplus/anim/f;

    new-instance v1, Lcom/oplus/anim/e;

    invoke-direct {v1, v0}, Lcom/oplus/anim/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, Lcom/oplus/anim/f;->a(Lcom/oplus/anim/f;Lcom/oplus/anim/e;)V

    :goto_0
    return-void
.end method
