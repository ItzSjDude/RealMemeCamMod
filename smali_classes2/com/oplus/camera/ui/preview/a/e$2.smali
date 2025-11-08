.class Lcom/oplus/camera/ui/preview/a/e$2;
.super Ljava/lang/Object;
.source "BlurTexturePreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/a/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/e;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BlurTexturePreview"

    const-string v1, "destroyEngine"

    .line 382
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/e;->a(Lcom/oplus/camera/ui/preview/a/e;Z)Z

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->b(Lcom/oplus/camera/ui/preview/a/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/e;->c(Lcom/oplus/camera/ui/preview/a/e;)Lcom/sensetime/blur/STBlurPreview;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "BlurTexturePreview"

    const-string v2, "mBlurPreviewHandler, handleMessage, destroyRender"

    .line 388
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/e;->c(Lcom/oplus/camera/ui/preview/a/e;)Lcom/sensetime/blur/STBlurPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensetime/blur/STBlurPreview;->destroyRender()I

    .line 391
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const-string v1, "BlurTexturePreview"

    const-string v2, "mBlurPreviewHandler, handleMessage, destroyRender X"

    .line 393
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->e(Lcom/oplus/camera/ui/preview/a/e;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->e(Lcom/oplus/camera/ui/preview/a/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->f(Lcom/oplus/camera/ui/preview/a/e;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(I)V

    .line 400
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/e;->a(Lcom/oplus/camera/ui/preview/a/e;I)I

    .line 401
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/e;->b(Lcom/oplus/camera/ui/preview/a/e;I)I

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->g(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->g(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->h(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->h(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->g(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->h(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/e;->h(Lcom/oplus/camera/ui/preview/a/e;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 414
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/e$2;->a:Lcom/oplus/camera/ui/preview/a/e;

    invoke-static {p0, v1}, Lcom/oplus/camera/ui/preview/a/e;->a(Lcom/oplus/camera/ui/preview/a/e;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 395
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
