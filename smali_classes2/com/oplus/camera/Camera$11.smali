.class Lcom/oplus/camera/Camera$11;
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

    .line 1327
    iput-object p1, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1330
    iget-object v0, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->h(Lcom/oplus/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    iget-object v2, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {v2}, Lcom/oplus/camera/Camera;->i(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1336
    iget-object v1, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    iget-object v2, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {v2}, Lcom/oplus/camera/Camera;->j(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1337
    iget-object v1, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    iget-object v2, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {v2}, Lcom/oplus/camera/Camera;->k(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1338
    iget-object v1, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    iget-object v2, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {v2}, Lcom/oplus/camera/Camera;->l(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "OplusCamera"

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUnregisterPauseReceiver, unregister fail, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0, v0}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;Z)Z

    return-void

    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/Camera$11;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0, v0}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;Z)Z

    .line 1343
    throw v1
.end method
