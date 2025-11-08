.class Lcom/oplus/camera/Camera$12;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;Landroid/content/Intent;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/oplus/camera/Camera$12;->b:Lcom/oplus/camera/Camera;

    iput-object p2, p0, Lcom/oplus/camera/Camera$12;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "watch_launch_from_framework"

    .line 211
    iget-object v1, p0, Lcom/oplus/camera/Camera$12;->a:Landroid/content/Intent;

    const-string v2, "android_camera_launch_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/camera/watch/WatchAgentService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/camera/Camera$12;->b:Lcom/oplus/camera/Camera;

    const-class v2, Lcom/oplus/camera/watch/WatchAgentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    iget-object v1, p0, Lcom/oplus/camera/Camera$12;->b:Lcom/oplus/camera/Camera;

    new-instance v2, Lcom/oplus/camera/Camera$12$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/Camera$12$1;-><init>(Lcom/oplus/camera/Camera$12;)V

    invoke-static {v1, v2}, Lcom/oplus/camera/Camera;->b(Lcom/oplus/camera/Camera;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 229
    iget-object v1, p0, Lcom/oplus/camera/Camera$12;->b:Lcom/oplus/camera/Camera;

    const/4 v2, 0x1

    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/w/d;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iget-object p0, p0, Lcom/oplus/camera/Camera$12;->b:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->d(Lcom/oplus/camera/Camera;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/oplus/camera/Camera;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OplusCamera"

    const-string v1, "checkAndBindWatchAgent, exception"

    .line 232
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
