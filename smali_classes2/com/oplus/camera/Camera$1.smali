.class Lcom/oplus/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    const-class v2, Lcom/oplus/camera/aps/service/ApsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v1, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    new-instance v2, Lcom/oplus/camera/Camera$1$1;

    invoke-direct {v2, p0}, Lcom/oplus/camera/Camera$1$1;-><init>(Lcom/oplus/camera/Camera$1;)V

    invoke-static {v1, v2}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 185
    iget-object v1, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    const/4 v2, 0x1

    .line 186
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/w/d;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iget-object p0, p0, Lcom/oplus/camera/Camera$1;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;)Landroid/content/ServiceConnection;

    move-result-object p0

    .line 185
    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/oplus/camera/Camera;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    :cond_0
    return-void
.end method
