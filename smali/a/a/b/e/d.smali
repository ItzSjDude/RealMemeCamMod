.class public La/a/b/e/d;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/graphics/SurfaceTexture;

.field public c:La/a/b/e/a;

.field public d:Z

.field public e:Z

.field public f:La/a/b/c/g;

.field public g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PPE TextureViewGL Renderer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/e/d;->e:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, La/a/b/e/d;->g:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic a(La/a/b/e/d;)La/a/b/c/g;
    .locals 0

    iget-object p0, p0, La/a/b/e/d;->f:La/a/b/c/g;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    iget-object v1, p0, La/a/b/e/d;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(La/a/b/c/g;)V
    .locals 0

    iput-object p1, p0, La/a/b/e/d;->f:La/a/b/c/g;

    return-void
.end method

.method public final a(La/a/b/e/c;)V
    .locals 6

    :cond_0
    :goto_0
    iget-object v0, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La/a/b/e/d;->b:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    const-string p0, "RenderThread"

    const-string p1, "doAnimation exiting"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, La/a/b/e/d;->f:La/a/b/c/g;

    invoke-virtual {v2}, La/a/b/c/g;->m()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, La/a/b/e/b;->c()Z

    :cond_2
    invoke-virtual {p0}, La/a/b/e/d;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    sget v5, La/a/b/c/g;->c:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v0

    sub-long/2addr v4, v2

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, La/a/b/e/d;->g:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, La/a/b/e/d;->d:Z

    iget-object p0, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, La/a/b/e/d;->b:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, La/a/b/e/d$a;

    invoke-direct {p1, p0, p2, p3}, La/a/b/e/d$a;-><init>(La/a/b/e/d;II)V

    invoke-virtual {p0, p1}, La/a/b/e/d;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "RenderThread"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, La/a/b/e/d;->b:Landroid/graphics/SurfaceTexture;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, La/a/b/e/d$c;

    invoke-direct {p1, p0}, La/a/b/e/d$c;-><init>(La/a/b/e/d;)V

    invoke-virtual {p0, p1}, La/a/b/e/d;->a(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, La/a/b/e/d;->e:Z

    if-eqz p1, :cond_0

    const-string p1, "RenderThread"

    const-string v0, "Allowing TextureView to release SurfaceTexture"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, La/a/b/e/d;->e:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderThread"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, La/a/b/e/d$b;

    invoke-direct {p1, p0, p2, p3}, La/a/b/e/d$b;-><init>(La/a/b/e/d;II)V

    invoke-virtual {p0, p1}, La/a/b/e/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    :try_start_0
    iget-boolean v3, p0, La/a/b/e/d;->d:Z

    if-nez v3, :cond_1

    iget-object v2, p0, La/a/b/e/d;->b:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    iget-object v3, p0, La/a/b/e/d;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-boolean v3, p0, La/a/b/e/d;->d:Z

    if-eqz v3, :cond_2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "RenderThread"

    const-string v0, "Renderer thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got surfaceTexture="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RenderThread"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, La/a/b/e/a;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, La/a/b/e/a;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, La/a/b/e/d;->c:La/a/b/e/a;

    new-instance v0, La/a/b/e/c;

    iget-object v1, p0, La/a/b/e/d;->c:La/a/b/e/a;

    iget-object v3, p0, La/a/b/e/d;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v3}, La/a/b/e/c;-><init>(La/a/b/e/a;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0}, La/a/b/e/b;->a()V

    invoke-virtual {p0, v0}, La/a/b/e/d;->a(La/a/b/e/c;)V

    invoke-virtual {v0}, La/a/b/e/c;->d()V

    iget-object v0, p0, La/a/b/e/d;->c:La/a/b/e/a;

    invoke-virtual {v0}, La/a/b/e/a;->a()V

    iget-boolean v0, p0, La/a/b/e/d;->e:Z

    if-nez v0, :cond_0

    const-string v0, "RenderThread"

    const-string v1, "Releasing SurfaceTexture in renderer thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
