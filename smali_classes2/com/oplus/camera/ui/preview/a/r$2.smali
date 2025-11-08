.class Lcom/oplus/camera/ui/preview/a/r$2;
.super Ljava/lang/Object;
.source "OplusBlurTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/r;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/r;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "OplusBlurTexturePreview"

    const-string v1, "destroyEngine"

    .line 274
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Z)Z

    .line 278
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/a/a;->b()V

    .line 282
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->g(Lcom/oplus/camera/ui/preview/a/r;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->g(Lcom/oplus/camera/ui/preview/a/r;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->h(Lcom/oplus/camera/ui/preview/a/r;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 287
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;I)I

    .line 288
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/r;->b(Lcom/oplus/camera/ui/preview/a/r;I)I

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->i(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->i(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->j(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->j(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->i(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->j(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/r;->j(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 301
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r$2;->a:Lcom/oplus/camera/ui/preview/a/r;

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/r;->a(Lcom/oplus/camera/ui/preview/a/r;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 282
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
