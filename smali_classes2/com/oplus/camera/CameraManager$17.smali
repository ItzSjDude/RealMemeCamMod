.class Lcom/oplus/camera/CameraManager$17;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 3382
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3385
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->an(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3386
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;[I)[I

    .line 3388
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3389
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CameraManager"

    const-string v2, "stopMultiFocus"

    .line 3392
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;Z)Z

    .line 3396
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3397
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$17;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->ce()V

    .line 3399
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
