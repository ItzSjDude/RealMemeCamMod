.class Lcom/oplus/camera/gl/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/gl/GLRootView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/oplus/camera/gl/GLRootView;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 701
    iput-boolean p1, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/gl/GLRootView;Lcom/oplus/camera/gl/GLRootView$1;)V
    .locals 0

    .line 699
    invoke-direct {p0, p1}, Lcom/oplus/camera/gl/GLRootView$IdleRunner;-><init>(Lcom/oplus/camera/gl/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 746
    iput-boolean v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->b:Z

    .line 747
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oplus/camera/gl/GLRootView;->a(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 708
    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->b:Z

    .line 710
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oplus/camera/gl/GLRootView;->a(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    monitor-exit v0

    return-void

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oplus/camera/gl/GLRootView;->a(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/gl/n$a;

    .line 715
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "GLRootView"

    const-string v2, "IdleRunner run, mRenderLock.lock()"

    .line 717
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oplus/camera/gl/GLRootView;->b(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 722
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oplus/camera/gl/GLRootView;->c(Lcom/oplus/camera/gl/GLRootView;)Lcom/oplus/camera/gl/h;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v2}, Lcom/oplus/camera/gl/GLRootView;->d(Lcom/oplus/camera/gl/GLRootView;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/oplus/camera/gl/n$a;->a(Lcom/oplus/camera/gl/h;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 726
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {p0}, Lcom/oplus/camera/gl/GLRootView;->b(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "GLRootView"

    const-string v0, "IdleRunner run, mRenderLock.unlock()"

    .line 728
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oplus/camera/gl/GLRootView;->b(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string v0, "GLRootView"

    const-string v2, "IdleRunner run, mRenderLock.unlock()"

    .line 728
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v0}, Lcom/oplus/camera/gl/GLRootView;->a(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    .line 732
    :try_start_2
    iget-object v2, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v2}, Lcom/oplus/camera/gl/GLRootView;->a(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 734
    iget-object v1, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {v1}, Lcom/oplus/camera/gl/GLRootView;->d(Lcom/oplus/camera/gl/GLRootView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 735
    invoke-virtual {p0}, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->enable()V

    .line 737
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 726
    iget-object p0, p0, Lcom/oplus/camera/gl/GLRootView$IdleRunner;->a:Lcom/oplus/camera/gl/GLRootView;

    invoke-static {p0}, Lcom/oplus/camera/gl/GLRootView;->b(Lcom/oplus/camera/gl/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-string p0, "GLRootView"

    const-string v1, "IdleRunner run, mRenderLock.unlock()"

    .line 728
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    throw v0

    :catchall_2
    move-exception p0

    .line 715
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
